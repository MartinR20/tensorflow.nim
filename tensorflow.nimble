import os
import strutils

# Package

version       = "0.1.0"
author        = "reichholf.martin@gmail.com"
description   = "A wrapper for the tensorflow cpp api"
license       = "Apache License, Version 2.0"
backend       = "cpp"

# Dependencies

srcDir = "src"
requires "nim >= 0.17.2"

# Specify tasks

before install:
    withDir "..":
        let untarInstalled = staticExec "nimble path untar"

        if untarInstalled.find("Error") != -1:
            exec "nimble install untar -y"
    
    const libDir = "$HOME/.nimble/pkgs/tensorflow-0.1.0/lib/"
    const includeDir = "$HOME/.nimble/pkgs/tensorflow-0.1.0/include/"

    try:
      exec "mkdir ./src/lib/"
      exec "mkdir ./src/include/" 
    except:
      discard

    var platform: string
     
    when defined linux:
      platform = "linux-x86_64"
      echo "adding c++ librarys to /etc/ld.so.conf"
      exec "echo \"" & libDir & "\" | sudo tee -a /etc/ld.so.conf; sudo ldconfig"
    elif defined windows:
      raise newException(OSError, "prebuilt librarys currently are not available on windows!") 
    elif defined(macosx):
      platform = "darwin-x86_64"
    else:
      raise newException(OSError, "Sorry prebuilt librarys currently are not available for your operating system!") 
  
    exec "nim c -r -d:ssl ./setup.nim " & platform

task test, "runs all unit tests":
    if not system.dirExists "build":
        mkDir "build"

    exec "nim cpp -r tests/test.nim"