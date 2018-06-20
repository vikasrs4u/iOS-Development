import Foundation

var maxTotal:Double = 0

func fibonaaci(till:Int) -> Double
{
    var min:Double = 0
    var max:Double = 1
    
    for _ in (1...till-1)
    {
        maxTotal = min + max
        min = max
        max = maxTotal
    }
    
    return maxTotal
    
}

print(String(format: "%.f", fibonaaci(till: 100)))

