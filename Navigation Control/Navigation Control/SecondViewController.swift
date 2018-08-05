//
//  SecondViewController.swift
//  Navigation Control
//
//  Created by Vikas R S on 8/2/18.
//  Copyright © 2018 Vikas Radhakrishna Shetty. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // This will be shown as the title for navigation bar for this screen and also link name when we are in next screen
        self.title = "Second VC"
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
