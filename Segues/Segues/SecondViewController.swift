//
//  SeconViewController.swift
//  Segues
//
//  Created by Vikas R S on 7/23/18.
//  Copyright © 2018 Vikas Radhakrishna Shetty. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{

    var dataPassed:String?
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // setting data passed from screen 1
        displayLabel.text = dataPassed!

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
