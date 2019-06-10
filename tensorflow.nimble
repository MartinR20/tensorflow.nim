# Package

version       = "0.1.0"
author        = "reichholf.martin@gmail.com"
description   = "A wrapper for the tensorflow cpp api"
license       = "MIT"
backend       = "cpp"

# Dependencies

requires "nim >= 0.17.2"

# Specify tasks

#task test, "Runs the test suite":
#  let python_cmd = "python3 -c \"import tensorflow as tf; print(tf.sysconfig.get_include())\""
#  exec "nim cpp --run {.passc: \"-Isome/path\".} {.passl: \"-Lsomelib\".} tensorflow/tests/tf_test.nim"
