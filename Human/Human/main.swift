//
//  main.swift
//  Human
//
//  Created by Vikas R S on 8/4/18.
//  Copyright © 2018 Vikas Radhakrishna Shetty. All rights reserved.
//

import Foundation

class Human
{
    var age:Int;

    var name:String;
    
    init()
    {
        self.age = 0
        self.name = ""
    }
    
    func introduce()
    {
        print("I'm \(name) and I'm \(age) years old")
    }
}


let humanReference = Human()

humanReference.introduce()
