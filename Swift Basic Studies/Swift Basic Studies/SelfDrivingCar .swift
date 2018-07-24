//
//  SelfDrivingCar .swift
//  Swift Basic Studies
//
//  Created by Vikas R S on 7/4/18.
//  Copyright © 2018 Vikas Radhakrishna Shetty. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car
{
    var destination:String? = nil
    
    
    override func drive()
    {
        destination = "Ashirwad Kolkere"
        
        print(destination!)
       if let ifDesitinationExists = destination
       {
           print(ifDesitinationExists)
       }
        
    }
    
    func drive(text:String)
    {
        let newText = text + text
        print(newText)
        super.drive()
    }
}
