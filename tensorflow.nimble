import os

# Package

version       = "0.1.0"
author        = "reichholf.martin@gmail.com"
description   = "A wrapper for the tensorflow cpp api"
license       = "Apache License, Version 2.0"
backend       = "cpp"

skipDirs = @["scrape", "tests"]

## Install files
srcDir = "tensorflow"

# Dependencies

requires "nim >= 0.17.2"

# Specify tasks

before install:
    withDir "..":
        exec "nimble install untar -y"
    
    exec "mkdir tensorflow/include"
    exec "mkdir tensorflow/lib"
    
    var platform: string
     
    when defined linux:
      platform = "linux-x86_64"
      echo "adding c++ librarys to /etc/ld.so.conf"
      exec "echo \"$HOME/.nimble/pkgs/tensorflow-0.1.0/lib/\" | sudo tee -a /etc/ld.so.conf; sudo ldconfig"
    elif defined windows:
      raise newException(OSError, "prebuilt librarys currently are only available on linux!") 
    elif defined(macosx):
      raise newException(OSError, "prebuilt librarys currently are only available on linux!") 
    else:
      raise newException(OSError, "prebuilt librarys currently are only available on linux!") 
  
    exec "nim c -r -d:ssl ./setup.nim " & platform