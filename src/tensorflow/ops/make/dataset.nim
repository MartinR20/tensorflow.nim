import macros, strutils, sequtils, sugar, ../../core/core, ../../utils/utils,
       makev2, exportOp, registerv2, ./makeutils, register_context,
       shapeFunctions, ../function, ../generated
include ../../core/with
{.hint[XDeclaredButNotUsed]:off.}

proc initList[T](s: seq[T]): string =
    when s[0] is seq:
        return s[0].initList
    else:
        return "{" & s.join(", ") & "}"    

proc initListDType[T](s: seq[T]): string =
    when s[0] is seq:
        return s[0].initList
    else:
        return "{(tensorflow::DataType)" & s.join(", (tensorflow::DataType)") & "}"  

proc makeDatasetKernel(exportName: string, dtypes: seq[int], shapes: seq[seq[int]], funheader: NimNode): NimNode =
    let cppSource =  "\"\"class " & exportName & "Op : public tensorflow::data::DatasetOpKernel {\n" &
                      "  public: \n" &
                      "    explicit " & exportName & "Op(tensorflow::OpKernelConstruction* context): DatasetOpKernel(context) {}\n" &
                      "    void MakeDataset(tensorflow::OpKernelContext* ctx, tensorflow::data::DatasetBase** output) override { *output = new Dataset(ctx); }\n" &
                      "  private:\n" &
                      "    class Dataset : public tensorflow::data::DatasetBase {\n" &
                      "      public:\n" &
                      "        Dataset(tensorflow::OpKernelContext* ctx) : tensorflow::data::DatasetBase(tensorflow::data::DatasetContext(ctx)) {}\n" &
                      "        std::unique_ptr<tensorflow::IteratorBase> MakeIteratorInternal(const std::string& prefix) const override {\n" &
                      "          return std::unique_ptr<tensorflow::IteratorBase>(new Iterator(\n" &
                      "             {this, tensorflow::strings::StrCat(prefix, \"::" & exportName & "\")}));\n" &
                      "        }\n" &
                      "        const tensorflow::DataTypeVector& output_dtypes() const override {\n" &
                      "          static auto* const dtypes = new tensorflow::DataTypeVector(" & dtypes.initListDType & ");\n" &
                      "          return *dtypes;\n" &
                      "        }\n" &
                      "        const std::vector<tensorflow::PartialTensorShape>& output_shapes() const override {\n" &
                      "          static std::vector<tensorflow::PartialTensorShape>* shapes =\n" &
                      "             new std::vector<tensorflow::PartialTensorShape>({" & shapes.initList & "});\n" & 
                      "          return *shapes;\n" &
                      "        }\n" &
                      "        std::string DebugString() const override { return \"" & exportName & "DatasetOp::Dataset\"; }\n" &
                      "      protected:\n" &
                      "         tensorflow::Status AsGraphDefInternal(tensorflow::SerializationContext *ctx,\n" &
                      "                                               DatasetGraphDefBuilder* b,\n" &
                      "                                               tensorflow::Node** output) const {\n" &
                      "           std::vector<tensorflow::Node*> input_tensors;\n" &
                      "           TF_RETURN_IF_ERROR(b->AddDataset(this, input_tensors, output));\n" &
                      "           return tensorflow::Status::OK();\n" &
                      "          }\n" & 
                      "      private:\n" &
                      "        class Iterator : public tensorflow::DatasetIterator<Dataset> {\n" &
                      "          public:\n" &
                      "            explicit Iterator(const Params& params)\n" &
                      "              : DatasetIterator<Dataset>(params) {}\n" &
                      "            tensorflow::Status GetNextInternal(tensorflow::IteratorContext* ctx,\n" &
                      "                                               std::vector<tensorflow::Tensor>* out_tensors,\n" &
                      "                                               bool* end_of_sequence) override {\n" &
                      "              tensorflow::mutex_lock l(mu_);\n" &
                      "              return " & exportName & "_Iterator(ctx, out_tensors, end_of_sequence);\n" &
                      "            }\n" &
                      "          protected:\n" &
                      "            tensorflow::Status SaveInternal(tensorflow::IteratorStateWriter* writer) override {\n" &
                      "              tensorflow::mutex_lock l(mu_);\n" &
                      "              return tensorflow::Status::OK();\n" &
                      "            }\n" &
                      "            tensorflow::Status RestoreInternal(tensorflow::IteratorContext* ctx,\n" &
                      "                                               tensorflow::IteratorStateReader* reader) override {\n" &
                      "              tensorflow::mutex_lock l(mu_);\n" &
                      "              return tensorflow::Status::OK();\n" &
                      "            }\n" &
                      "          private:\n" &
                      "            tensorflow::mutex mu_;\n" &
                      "          };\n" &
                      "    };\n" &
                      "}; \n\"\""
  
    insert(funheader, 1, parseStmt("{.emit:\"" & cppSource & "\".}"))
    return funheader

proc makeNewDatsetIncludes(funheader: NimNode, explicit = false): NimNode =
  if not op_included or explicit:
    var includes = "\"\"#include \"tensorflow/core/framework/dataset.h\" \n\"\""
    insert(funheader, 0, parseStmt("{.emit:\"" & includes & "\".}"))
    op_included = true
  return funheader
  
proc makeFun(body: NimNode, header: NimNode): NimNode =
    header[0].del(header[0].len-1, 1)
    insert(header[0], header[0].len, body)
    return header

proc makeDatasetFun(exportName: string, body: NimNode): NimNode =
    return makeFun(body,
                   parseStmt("proc export" & exportName & "(ctx: ptr IteratorContext, outputs: ptr TensorVec, end_of_sequence: ptr bool): Status {.exportc:\"" & exportName & "_Iterator\".}")
                  )  

type Parameters = tuple[dtypes: seq[DType], shapes: seq[seq[int]]]

macro dataset(params: static[Parameters], x: untyped): untyped =
    let exportName = $name(x)
  
    var ddevice = CPU
  
    registerOpDef[exportName] = call("Output", registerOpDef[exportName], static(makeutils.quote("handle: variant")))
    registerOpDef[exportName] = call("SetIsStateful", registerOpDef[exportName])

    var funheader = makeDatasetFun(exportName, body(x))
  
    funheader = REGISTER_KERNEL_BUILDER(exportName, ddevice, funheader)
    funheader = makeDatasetKernel(exportName, params.dtypes.map(proc(t: DType): int = return t.int), params.shapes, funheader)
    funheader = makeNewOpIncludes(funheader)
    funheader = makeNewDatsetIncludes(funheader)

    funheader = registerOp(funheader, exportName, repr x)
  
    return funheader

export dataset

type Dataset = ref object 
    scope: Scope
    global: Scope
    dataset: ovariant
    dtypes: array[1, DType] 
    shapes: array[1, TensorShape]

proc dataset*[T](scope: Scope, op: proc(scope: Scope): T): Dataset =
    var d = new Dataset 

    d.global = scope
    d.scope = newRootScope()
    d.dataset = op(d.scope).output
    d.dtypes = [DT_STRING] #really can be any value tensorflow doesn't care
    d.shapes = [[0].shape]

    return d

proc shuffle*(d: Dataset, buffersize: int64) =
    with d.scope:
        d.dataset = shuffleDataset(d.dataset,
                                   buffersize.oint64,
                                   0.oint64,
                                   0.oint64,
                                   d.dtypes,
                                   d.shapes)

proc map*[A,R](d: Dataset, mapfn: proc(scope: Scope, input: A): R) =
    let mapScope = newRootScope()
    let arg = iArg(mapScope, A, 0)
    let ret = mapfn(mapScope, arg)
    discard iRetval(mapScope, ret, 0)

    let map = tfclosureFromScopes(d.global, mapScope, "mapFun") 

    with d.scope:
        d.dataset = parallelMapDataset(d.dataset, 
                                       newOutList[oinvalid](),
                                       1.oint32,
                                       map, 
                                       [], 
                                       d.dtypes, 
                                       [[].shape])
        check()

proc batch*(d: Dataset, batchsize: int64) = 
    with d.scope:
        d.dataset = batchDataset(d.dataset,
                                 batchsize.oint64,
                                 d.dtypes,
                                 d.shapes)
        check()

proc prefetch*(d: Dataset, buffersize: int64) = 
    with d.scope:
        d.dataset = prefetchDataset(d.dataset,
                                    buffersize.oint64,
                                    d.dtypes,
                                    d.shapes)
        check()

proc iter(d: Dataset): olist[oinvalid] =
    discard iRetval(d.scope, d.dataset, 0)
    let factory = tfclosureFromScopes(d.global, d.scope, "factory")

    with d.global:
        let iter = oneShotIterator(factory, d.dtypes, d.shapes, "", "")
        check()
        return iteratorGetNext[oinvalid](iter, d.dtypes, d.shapes).output

when isMainModule:
    var i = 0
    proc TestDataSet(ctx: ptr IteratorContext, 
                    outputs: ptr TensorVec, 
                    end_of_sequence: ptr bool): Status {.setShapeFn: scalarShape,
                                                         dataset: (@[DT_STRING], @[@[1,2]]).} =

        let ten = tensor(ctx.allocator(), DT_STRING, [1, 2], ostring)
        let buf = ten.flat()
        buf[0] = newCPPString("MyDataSet")
        buf[1] = newCPPString($i)
        i += 1
        outputs[].add ten

        if i == 100:
            end_of_sequence[] = true
        else:
            end_of_sequence[] = false

        return ok()

    with newRootScope():
        let d = dataset(testDataSet)
        d.shuffle(64)
        d.map(proc(scope: Scope, x: ostring): ostring = 
                return x)
        d.batch(64)

        let it = d.iter()
        let sess = newSession()

        echo sess.runSession(it)[0]
        echo sess.runSession(it)[0]
        try:
            echo sess.runSession(it)[0]
        except:
            echo getCurrentExceptionMsg()

