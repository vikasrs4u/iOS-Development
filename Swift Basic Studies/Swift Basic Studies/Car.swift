//
//  Car.swift
//  Swift Basic Studies
//
//  Created by Vikas R S on 7/4/18.
//  Copyright © 2018 Vikas Radhakrishna Shetty. All rights reserved.
//

import Foundation

enum CarType:String
{
    case Hatchback = "Car I Like, easy to park"
    case Coupé
    case Roadster
    case StationWagon
    case Crossover
    case Convertible
}

enum CarNumberPlateNumber:Int
{
    case California = 1000
    case Texas
    case Kundapura

}

class Car
{
    var carColor = "Black"
    
     var numberOfSeats = 10
    
    init()
    {
        
    }
    
    init(seatsInThecar:Int)
    {
        numberOfSeats = seatsInThecar
    }
    
    var typeOfCar:CarType = CarType.Hatchback
    
    var carNumberPlate:CarNumberPlateNumber = CarNumberPlateNumber.Kundapura
    
    func drive()
    {
        print("Drive method is called")
    }
}
