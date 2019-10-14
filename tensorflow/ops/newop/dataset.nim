import macros
import strutils
import sequtils
import sugar
import ../../core/core
import ./utils
import ./nimFuncBuilder
import ./opClassBuilder
import ./register
import ./exportOp
import ./exsistingOp
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
                      "             new std::vector<tensorflow::PartialTensorShape>({" & "{}" & "});\n" & #shapes.initList
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
  
proc makeDatasetFun(exportName: string, body: NimNode): NimNode =
    return makeFun(body,
                   parseStmt("proc export" & exportName & "(ctx: ptr IteratorContext, outputs: ptr TensorVec, end_of_sequence: ptr bool): Status {.exportc:\"" & exportName & "_Iterator\".}")
                  )  

proc registerDataset(exportName: string, funheader: NimNode): NimNode =
    const staticSource = " & \".Output(\\\"handle: variant\\\").SetIsStateful();\".}"

    if lookUp.hasKey(exportName):
        insert(funheader, 1, parseStmt("{.emit:lookUp[\"" & exportName & "\"] " & staticSource))
    else:
        insert(funheader, 1, parseStmt("{.emit:\"REGISTER_OP(\\\"" & exportName & "\\\")\" " & staticSource))

    return funheader

type Parameters = tuple[dtypes: seq[DType], shapes: seq[seq[int]]]

macro dataset(params: static[Parameters], x: untyped): untyped =
    let exportName = $name(x)
  
    var ddevice = CPU
  
    var funheader = makeDatasetFun(exportName, body(x))
  
    let outputIsList = false
    let args = OrderedTable[string, string]()
  
    funheader = makeNimDef(exportName, args, args, outputIsList, funheader)
    funheader = makeOpClass(exportName, args, args, outputIsList, funheader)
    funheader = REGISTER_KERNEL_BUILDER(exportName, ddevice, funheader)
    funheader = makeDatasetKernel(exportName, params.dtypes.map(proc(t: DType): int = return t.int), params.shapes, funheader)
    funheader = registerDataset(exportName, funheader)
    funheader = makeNewOpIncludes(funheader)
    funheader = makeNewDatsetIncludes(funheader)
  
    return funheader

export dataset