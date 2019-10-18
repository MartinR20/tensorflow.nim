import 
    unittest, tensorflow/core, tensorflow/utils, random, tables

test "debug print":
    let ten = tensor([1,2,3,4,5,6], oint32)

    check $ten == "Tensor<type: int32 shape: [6] values: 1 0 2...>"

test "value print":
    let ten = tensor([[1,2],[3,4],[7,8]], oint32)

    check ten.valuestr(-1) == """[[1 0]
 [2 0]
 [3 0]]"""

template access_with_t(oT: untyped) =
    test "access " & $oT[]:
        type T = oT.To

        when T[] is Complex32:
            let r0: T = (complex32(rand(100.3), rand(100.3)))
            let r1: T = (complex32(rand(100.3), rand(100.3)))
        elif T[] is Complex64:
            let r0: T = (complex64(rand(100.3), rand(100.3)))
            let r1: T = (complex64(rand(100.3), rand(100.3)))
        elif T[] is bfloat16_t:
            let r0: T = rand(100.3).bfloat16
            let r1: T = rand(100.3).bfloat16
        elif T[] is cppstring:
            let r0: T = newCPPString $rand(100.3)
            let r1: T = newCPPString $rand(100.3)
        else:
            let r0: T = cast[T] (rand(100.3))
            let r1: T = cast[T] (rand(100.3))

        let ten = tensor([r0,r1], oT)

        check ten.data[1] == r1

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
    
