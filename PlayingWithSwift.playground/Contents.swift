//: Playground - noun: a place where people can play

import UIKit

// Means its a variable
var str = "Hello, playground"

var myName:String = "Vikas"

var myLastName = " Shetty"

myName = myName + " Shetty"

myName = "\(myName) \(myLastName)"

let lastYear:Int = 2017


// remeber data type is not mandatory.
let scuID =  1375510

// below code is illegal as "let or constants cant be modified once created.
//lastYear = lastYear+1

let copyRightMessage = "Apple Copyrights \(lastYear+1)"

let multiplier = 3

// to create an array which contains constants or image name we can use this.

let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

let message = "\(multiplier) times 2.5 is \(Double(multiplier)*2.5)"

print (message)
print (message)
