import Cocoa

//var str = "Hello, playground"
//
//
//
//// Repeats 5 times
//for _ in 1...5
//{
//    print("Hello World")
//}
//
//// Repeats 4 times
//for _ in 1..<5
//{
//    print("Hello Viki")
//}
//
//var listed = ["Vikas", "Neethi", "Shalu"]
//
//// Prints all elements of the list
//for l in listed
//{
//    print(l)
//}
//
//var i = 10




let aPoint = (x:-9.0,y:7.0)

switch aPoint
{
    case (let x, 2.0): print("I am here \(x)")
    
    case (1.0,let y): print("It is here \(y)")
    
    case (3.0,_): print("First element of tuple is 3 and other one we dont care.")
    
    case (let x,let y) where x > 0.0 && y > 5.0: print("Here we are \(x) and \(y)")
    
    default: print("This will act as default and also we can get values i.e \(aPoint.x) and \(aPoint.y)")
    
}



