import asyncdispatch, httpclient
import untar
import os
import terminal
import strutils
import ../tensorflow/tensorflow

## download mnist
proc onProgressChanged(total, progress, speed: int64) {.async.} =
    let progressInMB = cast[int](progress div 1000000)
    let totalInMB = cast[int](total div 1000000)

    stdout.eraseLine

    if(total != 0):
        # only display progress bar when total is available
        var content = "[          ] "
        
        for i in 1..(progressInMB.float / totalInMB.float * 10).int:
            content[cast[int](i)] = '#'

        stdout.write(content)

    stdout.write("downloaded: " & $progressInMB & "Mb/s ")
    stdout.write("speed: " & $(speed div 1000) & "kb/s ")
    stdout.flushFile

proc download(link: string, name: string) {.async.} = 
    var client = newAsyncHttpClient()
    client.onProgressChanged = onProgressChanged
    
    echo "downloading " & link & "..."
    await client.downloadFile(link, name & ".gz")
    
    echo "\ninflating " & name & ".gz..."
    discard os.execShellCmd("gzip --decompress " & name & ".gz")

    # removing archive
    removeFile(name & ".gz")

if not existsFile("train_img") or not existsFile("train_label") or not existsFile("test_img") or not existsFile("test_label"):
    waitFor download("http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz", "train_img")
    waitFor download("http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz", "train_label")
    waitFor download("http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz", "test_img")
    waitFor download("http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz", "test_label")

## train model
let trainImgTen = newTensor(TF_UINT8, [60000,28,28,1]) 
trainImgTen.readBytes("train_img", 16, 60000 * 28 * 28)

echo trainImgTen

let trainLabelTen = newTensor(TF_UINT8, [60000, 1]) 
trainLabelTen.readBytes("train_label", 8, 60000)

echo trainLabelTen

var proto: seq[Layer] = @[]

proto.newConv2d(1, 2, [3, 3], [2, 2])
proto.newActivation(Relu)
proto.newConv2d(2, 4, [3, 3], [2, 2])
proto.newActivation(Relu)
proto.newConv2d(4, 8, [3, 3], [2, 2])
proto.newActivation(Relu)
proto.newReshape([32, 128])
proto.newDense(128,32)
proto.newActivation(Relu)
proto.newDense(32,1)

let rt = newRootScope()
let sess = newSession(rt)

var output: TensorVec

var feed: FeedDict

with rt:
    let placeholderImg = Placeholder(trainImgTen.dtype)
    feed[placeholderImg] = trainImgTen

    let normalize0 = Div(Cast(placeholderImg, float32), Const(255, float32))

sess.runSession(feed, normalize0, output)
let trainImg = output[0]

feed.clear()

with rt:
    let placeholderLabel = Placeholder(trainLabelTen.dtype)
    feed[placeholderLabel] = trainLabelTen

    let normalize1 = Div(Cast(placeholderLabel, float32), Const(9, float32))
sess.runSession(feed, normalize1, output)
let trainLabel = output[0]

var model = proto.compile(rt, newMSE(), newAdam())

model.fit(trainImg, trainLabel, 21)
