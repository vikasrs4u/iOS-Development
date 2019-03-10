import Foundation

var str = "Hello, playground"


var coordinates = (0.2, 0.3)


var pointCategory:String = "Empty"


switch coordinates
{
case (0,0):
    pointCategory = "origin"
default:
    pointCategory = "Not a origin"
}

print(pointCategory)


