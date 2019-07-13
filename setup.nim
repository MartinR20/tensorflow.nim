import httpClient
import json
import untar
import os

var client = newHttpClient()

let platform = "linux-x86_64"
let linksJson = client.getContent("http://tensorflownim-libs.herokuapp.com/?platform=" & platform)
let links = parseJson(linksJson)

proc install(dir: string, compressedName: string, displayName: string) = 
    echo "downloading " & displayName & "..."
    client.downloadFile(($links[compressedName])[1..^2], dir & compressedName)
    echo "inflating " & displayName & "..."

    # uncompress
    var file = newTarFile(dir & compressedName)
    file.extract(dir, true, "./tmp")
    removeDir("./tmp")

    # removing archive
    removeFile(dir & compressedName)

let installLibDir = "./lib/" 

install(installLibDir, platform & ".tar.gz", "tensorflow library")

let installIncludeDir = "./include/"

install(installIncludeDir, "include.tar.gz", "include files")

