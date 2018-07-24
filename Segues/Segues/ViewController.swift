//
//  ViewController.swift
//  Segues
//
//  Created by Vikas R S on 7/23/18.
//  Copyright © 2018 Vikas Radhakrishna Shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if (segue.identifier == "goToSecondScreen")
        {
            // getting instance of secondViewController
            let destination = segue.destination as! SecondViewController
            
            // setting data to screen 2 variable
            destination.dataPassed = textField.text!
        }
    }

    @IBAction func onClickOfMoveButton(_ sender: Any)
    {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    
}

