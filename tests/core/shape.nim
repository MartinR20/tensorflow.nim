import unittest
import 
    tensorflow/core

test "shape creation":
    let sh = shape([2,2])
    check $sh == "[2,2]"

test "dim_size":
    # undefined
    # var sh = shape([])
    # check sh.dim_size(0) == 0

    var sh = shape([0])
    check sh.dim_size(0) == 0

    sh = shape([1,2,4])
    check sh.dim_size(2) == 4

test "dims":
    var sh = shape([])
    check sh.dims == 0

    sh = shape([1,2,4])
    check sh.dims == 3