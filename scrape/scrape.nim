import httpclient
import htmlparser
import xmltree 
import re
import strutils
import os
import sequtils

let client = newHttpClient()
let content = client.getContent("https://www.tensorflow.org/versions/r1.14/api_docs/cc")

let doc = parseHtml(content)

let tds = doc.findAll("td")
let headings = doc.findAll("h2").map(proc(e: XmlNode): string = return e.innerText().split("\n")[1].strip())
var idx = 0
var last_func = "ZZZ"

for i in tds:
    let e = i.findAll("a")
    if e.len != 0: 
        let text = e[0].innerText()

        if text.len > 16 and text[0..16] == "tensorflow::ops::":
            let bounds = ($e[0]).findBounds(re("\\\".*\\\"")) #text[17..^1] & 
            let name = text[17..^1].strip()
            let link = ($e[0])[bounds[0]+1..bounds[1]-1]

            sleep(350)
            let code = parseHtml(client.getContent("https://www.tensorflow.org/" & link)).findAll("pre")
            var output: string

            for hit in code:
                if ($hit).find("output") != -1:
                    output = hit.innerText()
                elif ($hit).find(name & "(") != -1:
                    if name < last_func: 
                        if headings[idx] == "core":
                            idx += 1
                        echo "module " & headings[idx]  
                        idx += 1

                    echo "function " & name & " " & output
                    last_func = name

                    for dtype in hit.innerText().split("\n")[2..^2]:
                        echo dtype

                        if dtype.find("attrs") != -1:
                            sleep(350)
                            let struct = parseHtml(client.getContent("https://www.tensorflow.org/" & link[0..^6].replace("class", "struct") & "/attrs")).findAll("pre")

                            for hit in struct: 
                                if ($hit).find(name) != -1:
                                    let splited = hit.innerText().split("\n")[0..^2]

                                    for i, e in splited:
                                        if(i == 0):
                                            let space_sep = e.split(" ")[2][17..^2]
                                            echo "function " & space_sep
                                        else:
                                            echo e
