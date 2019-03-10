import Cocoa

var str = "Hello, playground"


var  x = [5,10,3,11,12]



var y = x.sorted().map {$0*$0}

print("We are printing Y here: \(y)")

// x still remains unstorted, sorted is not inplace storting
print("We are printing X here: \(x)")
