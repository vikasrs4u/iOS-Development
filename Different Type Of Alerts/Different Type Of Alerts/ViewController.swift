//
//  ViewController.swift
//  Different Type Of Alerts
//
//  Created by Vikas R S on 6/28/18.
//  Copyright © 2018 Vikas Radhakrishna Shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func openAlertWindow(_ sender: UIButton)
    {
        
        if (sender.tag == 1)
        {
            let alert = UIAlertController(title: "Single", message: "Single Button Alert", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler:nil)

            alert.addAction(alertAction)

            self.present(alert, animated: true, completion:nil)
//            let alert = UIAlertView()
//            alert.title = "Alert"
//            alert.message = "Here's a message"
//            alert.addButton(withTitle:"OK Button")
//            alert.show()
        }
        else if (sender.tag == 2)
        {
            let alert = UIAlertController(title: "Double", message: "Would you like to continue learning how to use iOS alerts?", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler:nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler:nil)
            
            alert.addAction(okAction)
            alert.addAction(cancelAction)
            
            self.present(alert, animated: true, completion:nil)
            
        }
        else if (sender.tag == 3)
        {
            let alert = UIAlertController(title: "Reminder", message: "OS is asking for a update, would you like to update?", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Update Now", style: .default, handler:nil)
            let remindAction = UIAlertAction(title: "Reminder Me Tomorrow", style: .default, handler:nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler:nil)
            
            alert.addAction(okAction)
            alert.addAction(remindAction)
            alert.addAction(cancelAction)
            
            self.present(alert, animated: true, completion:nil)
        }
    }
    
    

}

