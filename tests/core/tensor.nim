import 
    unittest, tensorflow/core, tensorflow/utils, random, tables, streams

test "debug print":
    let ten = tensor([1,2,3,4,5,6], oint32)

    check $ten == "Tensor<type: int32 shape: [6] values: 1 2 3...>"
    delete ten

test "value print":
    let ten = tensor([[1,2],[3,4],[7,8]], oint32)

    check ten.valuestr(-1) == """[[1 2]
 [3 4]
 [7 8]]"""
    delete ten

test "shape access":
    let a = tensor([[1,2],[3,4],[7,8]], oint32)
    check $a.shape == "[3,2]"
    delete a

    let b = tensor(0, oint32)
    check $b.shape == "[]"
    delete b

test "dtype access":
    let ten = tensor([[1,2],[3,4],[7,8]], oint32)

    # runtime
    check ten.dtype == DT_INT32 
    # compiletime
    check (ten.otype is oint32)

    delete ten

test "tensor slice":
    let ten = tensor([[1,2],[3,4],[7,8]], oint32)

    let s0 = ten.slice(0,2)
    let s1 = ten.slice(1,3)

    check s0.valuestr == """[[1 2]
 [3 4]]"""

    check s1.valuestr == """[[3 4]
 [7 8]]"""

    delete ten

test "gced/ref tensor":
    var ten: ref Tensor[oint32]
    var lastmem = 0
    var failcount = 0
    var passed: bool

    for i in 0..100:
        GC_fullCollect()
        ten = gc tensor([[1,2],[3,4],[7,8]], oint32) # TODO: find prettier way of interfacing with the gc
      
        let currmem = getOccupiedMem()
        passed = currmem == lastmem
        lastmem = currmem

        failcount += cast[int](not passed)

        GC_fullCollect()

    check failcount == 2 # expecting memory to grow two times


test "copyFrom":
    let src = tensor([[1,2],[3,4],[7,8]], oint32) 
    let dest = tensor(DT_INT32, src.shape, oint32) # TODO: make this call prettier
    
    check dest.copyFrom(src, src.shape)

    check src.valuestr == dest.valuestr

    dest.data[0] = 0

    check src.valuestr == dest.valuestr

    delete src
    delete dest

test "copy":
    let src = tensor([[1,2],[3,4],[7,8]], oint32) 
    let dest = copy src

    check src.valuestr == dest.valuestr

    dest.data[0] = 0

    check src.valuestr == dest.valuestr

    delete src
    delete dest

test "read binary":
    let data = [0x00FF0FF0, 0x00FFEAD5, 0x33C9EE4F, 0x6E7F8355, 0x00FF0FF0, 0x00FFEAD5, 0x33C9EE4F, 0x6E7F8355]

    let ten = tensor(DT_UINT8, [64], ouint8)

    let binary = newFileStream("test.binary", fmWrite)
    binary.write data
    binary.flush()

    discard ten.readBytes("test.binary", 0, 64)
    let buf = cast[ptr int64](ten.data)

    for i in 0..7:
        check buf[i] == data[i]

    delete ten

template access_with_t(oT: typedesc) =
    test "access " & $oT:
        template T(): untyped = oT.To

        when T is Complex32:
            let r0 = (complex32(rand(100.3), rand(100.3)))
            let r1 = (complex32(rand(100.3), rand(100.3)))
        elif T is Complex64:
            let r0 = (complex64(rand(100.3), rand(100.3)))
            let r1 = (complex64(rand(100.3), rand(100.3)))
        elif T is bfloat16_t:
            let r0 = rand(100.3).bfloat16
            let r1 = rand(100.3).bfloat16
        elif T is cppstring:
            let r0 = newCPPString $rand(100.3)
            let r1 = newCPPString $rand(100.3)
        else:
            let r0 = (T)(rand(100.3))
            let r1 = (T)(rand(100.3))

        let ten = tensor([[r0],[r1]], oT)

        check ten.data[1] == r1
        delete ten

access_with_t odouble   
access_with_t ofloat    
access_with_t oint64    
access_with_t oint32    
access_with_t ouint8    
access_with_t oint16    
access_with_t oint8     
access_with_t ostring   
access_with_t obool     
access_with_t ouint16   
access_with_t ouint32   
access_with_t ouint64   
access_with_t ocomplex64
access_with_t ocomplex128
access_with_t oqint8  
access_with_t oquint8   
access_with_t oqint32   
access_with_t obfloat16 
access_with_t oqint16   
access_with_t oquint16  
access_with_t ohalf     
    
