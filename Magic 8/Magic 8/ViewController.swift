//
//  ViewController.swift
//  Magic 8
//
//  Created by Vikas R S on 4/2/18.
//  Copyright © 2018 Vikas Radhakrishna Shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallImage: UIImageView!
    
    let imageNameArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeAskMeBallImageView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askMeButton(_ sender: Any)
    {
        changeAskMeBallImageView()
    }
    
    func changeAskMeBallImageView()
    {
        let randomNum:Int = Int(arc4random_uniform(5))
        magicBallImage.image = UIImage(named:"\(imageNameArray[randomNum])")
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        changeAskMeBallImageView()
    }
    
}

