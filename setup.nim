import asyncdispatch, httpclient
import json
import untar
import os
import terminal

var platform = paramStr(1)

if existsDir("/content/sample_data"):
    platform &= "-gpu"
    echo "Detected Colab defaulting to gpu installation!"
elif platform != "darwin-x86_64":
    while true:
        echo "Install with gpu support? [y/n]"
        let input = readLine(stdin)

        if input == "y":
            platform &= "-gpu"
            break
        elif input == "n":
            break


proc getDownloadLinks(platform: string): Future[JsonNode] {.async.} =
    var client = newAsyncHttpClient()
    let linksJson = await client.getContent("http://tensorflownim-libs.herokuapp.com/?platform=" & platform)
    return parseJson(linksJson)

let links = waitFor getDownloadLinks(platform)

proc onProgressChanged(total, progress, speed: int64) {.async.} =
    let progressInMB = cast[int](progress div 1000000)
    let totalInMB = cast[int](total div 1000000)

    stdout.eraseLine

    if(total != 0):
        # only display progress bar when total is available
        var content = "[            ] "
        
        for i in 1..(progressInMB.float / totalInMB.float * 10).int:
            content[cast[int](i)] = '#'

        stdout.write(content)

    stdout.write("downloaded: " & $progressInMB & "Mb ")
    stdout.write("speed: " & $(speed div 1000) & "kb/s ")
    stdout.flushFile

proc install(dir: string, compressedName: string, displayName: string) {.async.} = 
    var client = newAsyncHttpClient()
    client.onProgressChanged = onProgressChanged
    
    let compressedPath =  dir & compressedName

    echo "downloading " & displayName & "..."
    await client.downloadFile(($links[compressedName])[1..^2], compressedPath)
    
    echo "\ninflating " & displayName & "..."
    var file = newTarFile(compressedPath)
    file.extract(dir, true, "./tmp")
    removeDir("./tmp")

    # removing archive
    removeFile(compressedPath)

waitFor install("./tensorflow/lib/", platform & ".tar.gz", "tensorflow library")
waitFor install("./tensorflow/include/", "include.tar.gz", "include files")

