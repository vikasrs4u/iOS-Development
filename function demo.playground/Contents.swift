import Cocoa

var str = "Hello, playground"


func add(number1:Int, number2:Int) -> Int
{
    return number1 + number2
}


// function can be passed in to another function
var function = add


// we can call the add function from this new variable

//print(function(2,4))


func subtract(number1:Int, number2:Int) -> Int
{
    return number1 + number2
}

var functionNew = subtract

functionNew(10,3)

//subtract(number1: 10, number2: 3)




func addition(number1:Int, number2:Int) -> Int
{
    return number1 + number2
}


func subs(number1:Int, number2:Int) -> Int
{
    return number1 + number2
}

typealias MyType = (Int, Int) -> Int

func printTheResult(operation: MyType, _ num1:Int, _ num2:Int)
{
    let result = operation(num1,num2)
    
    print(result)
}


//printTheResult(operation: addition, 10, 5)

//printTheResult(operation: subs, 100, 20)




var catName:String?

var whatsTheCatName = catName ?? "caty"

print(whatsTheCatName)

catName = "Bikas"

whatsTheCatName = catName ?? "caty"

print(whatsTheCatName)
