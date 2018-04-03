// functions in swift

// Swift function without any attributes
func getNewItem()
{
    print("Bring Vikas new clothes")
    print("Iron the clothes")
    print("Keep the clothes in almera")
    
}

// Calling the swift function

getNewItem()


// Functions with attributes

func getNewDressWithType(dressType:String, numberOfDress:Int)
{
    print("The type of dress is: " + dressType)
    print("Number of " + dressType + " " + String(numberOfDress))
    
}

// function call and inputs
getNewDressWithType(dressType: "Suit", numberOfDress: 1)
