import 
    globals

from ../ops/gen import
    concat, concatToOut

template concatOp(scope, input, dim): untyped = 
    concat(scope, input, dim)

export 
    concatOp, concatToOut
    
proc concat*(prgm: NimNode, model: string, scope: NimNode, i: int, command: NimNode) =
    let name = unique_name("concat", model, i)

    let olist = newNimNode(nnkCall)
    olist.add ident "newOutList"

    let key = command[1].strVal

    var iname: string

    var shape: seq[int]
    var last_shape: seq[int]

    var dtype: string
    var last_dtype: string

    firstmatch key, "output", idx:
        iname = metadata[key][idx]["name"].to(string)

        shape = metadata[key][idx]["shape"].to(seq[int])
        last_shape = shape
        olist.add newCall("anyToInvalid", ident iname)

        dtype = metadata[key][idx]["dtype"].to(string)
        last_dtype = dtype

    for i in 2..command.len-1:
        firstmatch key, "output", idx:
            let key = command[i].strVal
            let iname = metadata[key][idx]["name"].to(string)

            for i, dim in metadata[key][idx]["shape"].to(seq[int])[1..^1]:
                shape[i+1] += dim 

            dimCheck(iname, shape.len, last_shape.len)
            assert shape[0] == last_shape[0], "First dimension of input shapes is not the same."
            last_shape = shape


            dtype = metadata[key][idx]["dtype"].to(string)
            assert dtype == last_dtype, "Types are not the same, type " & $(i-1) & " is " & last_dtype & " and " &
                                        "type " & $i & " is " & dtype & "."
            last_dtype = dtype
            

            olist.add newCall("anyToInvalid", ident iname)

    prgm.add newLetStmt(ident name,
                        newCall("concatOp", scope,
                                            prgm.nconst(model, scope, newLit 0, ident "oint32"), 
                                            olist))

    echo treeRepr prgm[^1]

    metadata[model].add %*{
                    "name": name,
                    "shape": %*shape,
                    "dtype": newJString dtype,
                    "output": name
                   }

register_function(concat)