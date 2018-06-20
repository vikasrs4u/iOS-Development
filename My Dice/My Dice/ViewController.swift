//
//  ViewController.swift
//  My Dice
//
//  Created by Vikas R S on 5/30/18.
//  Copyright © 2018 Vikas Radhakrishna Shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomDice: UIImageView!
    
    var randomNum = 0
    
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
        randomNum = Int(arc4random_uniform(6))
        
        randomDice.image = UIImage(named: diceArray[randomNum])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        diceImageChanger()

    }
    
}

