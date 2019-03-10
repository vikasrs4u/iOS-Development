//
//  ViewController.swift
//  DGame
//
//  Created by Vikas R S on 3/6/19.
//  Copyright © 2019 Vikas Radhakrishna Shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet var diceImageViewOutlets: UIImageView!
    
    var diceImageArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        rolling()

    }

    @IBAction func onClickOfRoll(_ sender: UIButton)
    {
        rolling()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        rolling()
        
    }
    
    
    func rolling()
    {
        let randomNumber = Int.random(in:0...5)
        
        diceImageViewOutlets.image = UIImage(named: diceImageArray[randomNumber])
    }
    
}

