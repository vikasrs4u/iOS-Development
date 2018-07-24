
// Remember its not an error even if we a leave a trailing comma at the end its fine in swift
var myArrayOfString = ["Vikas","krs", "shyamala","Shalu",]

var myArrayOfString2  = myArrayOfString

myArrayOfString.sort()

myArrayOfString.sorted(by: >)

func compareString (myFirstArray:String,mySecondArray:String) -> Bool
{
    if myFirstArray.lowercased() > mySecondArray.lowercased()
    {
        return true
    }
    else
    {
        return false
    }
    
    
}


func newFilter(myString:String) -> Bool
{
    if (myString.starts(with: "S") || myString.starts(with: "s"))
    {
        return true
    }
    else
    {
        return false
    }
    
}


myArrayOfString.sorted(by:compareString )

print(myArrayOfString)

let newArray = myArrayOfString.filter{($0.starts(with: "S") || $0.starts(with: "s"))}

print(newArray)


//myArrayOfString.sorted(by: compareMyArray)

//Now this array cannot be modified.
let integerArrays = [1,2,3,4,5] 

// How to create Array with no value

// integerArrays.append(10) error as we cannot append to already intialzed let array

let myNewArray = [String]() // does not make sense as we cannot intialze later as it is let

//myNewArray.append("Vikas") Cannot use mutating member on immutable value: 'myNewArray' is a 'let' constant



// or we can
// This is initialzing and
let myNewArray2:[String] = []


// or we can

//this is just defining the array
var myNewArray3:[String]

//myNewArray3.append("Vikas Shetty") // This will give error as we have not initlaized.

// this is initilazing the array

myNewArray3 = []

// after intialzation we can append.    
myNewArray3.append("Vikas Shetty")



//var myArray = [String]()

var myArray:[String] = []

myArray.append("Vikas")
