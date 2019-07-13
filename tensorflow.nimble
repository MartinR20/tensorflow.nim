import os

# Package

version       = "0.1.0"
author        = "reichholf.martin@gmail.com"
description   = "A wrapper for the tensorflow cpp api"
license       = "Apache License, Version 2.0"
backend       = "cpp"

# Dependencies

requires "nim >= 0.17.2"

# Specify tasks

before install:
    withDir "..":
        exec "nimble install untar -y"
    
    exec "mkdir include"
    exec "mkdir lib"
    
    when defined linux:
      echo "adding c++ librarys to /etc/ld.so.conf"
      exec "echo \"${PWD}/lib\" | sudo tee -a /etc/ld.so.conf; sudo ldconfig"

    exec "nim c -r -d:ssl setup.nim"
