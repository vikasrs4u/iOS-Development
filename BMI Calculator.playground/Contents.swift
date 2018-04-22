//: Playground - noun: a place where people can play

import UIKit

func bmiCalculator(massInKg:Double, heightInFeet:Double,heightInInches:Double) -> String
{
    let totalHeightInInches = heightInFeet * 12 + heightInInches;
    
    let heightInMeter = totalHeightInInches * 0.0254
    let bmi:Double = massInKg/pow(heightInMeter,2)
    
    if (bmi > 25)
    {
      return "Your BMI is \(bmi), you are overweight"
    }
    else if (bmi > 18.5 && bmi <= 25)
    {
        return "Your BMI is \(bmi), you are normal weight"
    }
    else
    {
       return "Your BMI is \(bmi), you are underweight"
    }
}

func bmiCalculator(massInKg:Double, heightInFeet:Double,heightInInches:Int) -> Int
{
    return 10
}
bmiCalculator(massInKg: 72.00, heightInFeet: 5, heightInInches: 7)
bmiCalculator(massInKg: 72.00, heightInFeet: 5, heightInInches: 7)

var textData = "Vikas"

var newText = "\(textData)10"

