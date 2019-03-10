//
//  ViewController.swift
//  My Diceeee
//
//  Created by Vikas R S on 3/7/19.
//  Copyright © 2019 Vikas Radhakrishna Shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet var diceImageOutlet: UIImageView!
    
    var diceImageArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        randomFunc()

    }
    
    
    @IBAction func rollButtonIsClicked(_ sender: UIButton)
    {
        
        randomFunc()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        randomFunc()
    }
    
    func randomFunc()
    {
        let randNum = Int.random(in:1...5)
        
        diceImageOutlet.image = UIImage(named:diceImageArray[randNum])
    }
    


}

