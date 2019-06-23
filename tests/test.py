import tensorflow as tf

zero_out_module = tf.load_op_library('./libnewOp_test.so')
print(zero_out_module.OP_LIST)
with tf.compat.v1.Session(''):
    result = zero_out_module.zero_out([5, 4, 3, 2, 1])
    print(result)