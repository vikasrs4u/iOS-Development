import UIKit

var str = "Hello, playground"

var arrayOfNumbers:NSMutableArray = [1,2,3,4,5,6]



//print(arrayOfNumbers.count)

arrayOfNumbers.add(12)

//print(arrayOfNumbers.count)


let maxValue:Int = 99

let minValue:Int = 1




func beerSong (min:Int, max:Int) -> String
{
    var outputString = ""
    
    for beerCount in (min...max).reversed()
    {
        outputString = outputString + " \n\(beerCount) bottles of beer on the wall, \(beerCount) bottles of beer. \nTake one down and pass it around, \(beerCount) bottles of beer on the wall.\n"
        
        if (beerCount == min)
        {
           outputString = outputString + "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, \(beerCount) bottles of beer on the wall."
        }
        
    }
    
    return outputString
}

print(beerSong(min: minValue, max: maxValue))
