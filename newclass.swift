//
//  newclass.swift
//  
//
//  Created by Vikas R S on 6/13/18.
//

import UIKit

class newclass: NSObject
{
    import Foundation
    
    func fibonaaci(till:Int) -> Int
    {
        var min = 0
        var max = 1
        var maxTotal:Int = 0
        
        for _ in (1...till)
        {
            maxTotal = min + max
            min = max
            max = maxTotal
        }
        
        return maxTotal
        
    }
    
    print(fibonaaci(till: 100))

}
