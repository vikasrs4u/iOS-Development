//
//  ViewController.swift
//  Diceee
//
//  Created by Vikas R S on 4/1/18.
//  Copyright © 2018 Vikas R S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomDice1: UIImageView!
    @IBOutlet weak var randomDice2: UIImageView!
    @IBOutlet weak var textLabelOutlet: UILabel!
    
    var randomNum1:Int = 0
    var randomNum2:Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageChanger()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonClick(_ sender: Any)
    {
        diceImageChanger()
    }
    
    func diceImageChanger()
    {
        randomNum1 = Int(arc4random_uniform(6)) //remember arcrandom gives us random number from 0 to N-1 that is 0 to 5 here
        
        randomNum2 = Int(arc4random_uniform(6))
        
        let totalSum:Int = randomNum1+randomNum2+2
        
        randomDice1.image = UIImage(named:diceArray[randomNum1])
        randomDice2.image = UIImage(named:diceArray[randomNum2])
        
        textLabelOutlet.text = "Total = "+String(totalSum)
    }

    // Added code to roll the dice on shaking iPhone.
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        diceImageChanger()
    }
    
}

