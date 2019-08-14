## The layers api is a keras like approach to building models giving you the opportunity for fast model 
## building and prototyping. Beware this interface will recieve drastic changes.
##
## .. code:: nim
##
##    var proto: seq[Layer] = @[]
##    
##    proto.newDense(10, 10)
##    
##    let rt = newRootScope()
##    let model = proto.compile(rt, newMSE(), newAdam())
##    
##    let input = newTensor([[1.0, 2.0, 4.0, 2.0, 3.0, 5.0, 6.0, 3.0, 4.0, 1.0]], float32)
##    
##    model.fit(input, input, 5)
##

import ./layer,
       ./dense,
       ./activation,
       ./conv2d,
       ./maxpool,
       ./avgpool,
       ./dropout,
       ./optim,
       ./reshape,
       ./loss,
       ./branch,
       ./concat,
       ./inline,
       ./variable,
       ./morph

export layer,
       dense,
       activation,
       conv2d,
       maxpool,
       avgpool,
       dropout,
       optim,
       reshape,
       loss,
       branch,
       concat,
       inline,
       variable,
       morph
       