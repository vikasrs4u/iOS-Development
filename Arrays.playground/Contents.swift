import Cocoa

var newArray = [1,2,"cat","cow",true] as [Any]

var newValue = newArray[4]

var newString:String = newArray[3] as! String

//print(newString)

var newStringValue:String = newValue as? String ?? "Was not a string Value"

//print(newStringValue)



var array:[String] = []

array.append("Vikas")



var arrayOfPlanets = ["Mercury", "Venus", "Earth", "Mars","Jupiter", "Saturn", "Uranus", "Neptune"]

arrayOfPlanets.count

for (index,planet) in arrayOfPlanets.enumerated()
{
    print(index, planet)
}




//for planet in arrayOfPlanets
//{
//    print(planet)
//}

//arrayOfPlanets.swapAt(1, 4)
//
//print(arrayOfPlanets)
//let removedElement = arrayOfPlanets.remove(at: 100)


//let firstElement =  arrayOfPlanets.removeFirst()
//print(firstElement)
//
//let lastElement =  arrayOfPlanets.removeLast()
//print(lastElement)



//print(arrayOfPlanets)

//arrayOfPlanets.insert("Planet X", at: 8)





//print(arrayOfPlanets.contains("Earth"))

//print(arrayOfPlanets.contains("Pluto"))



//print(arrayOfPlanets[1])

//print(arrayOfPlanets.first)

//print(arrayOfPlanets.last!)


//print(arrayOfPlanets.max()!)
//
//print(arrayOfPlanets.min()!)
