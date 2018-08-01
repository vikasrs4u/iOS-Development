//
//  ViewController.swift
//  Table View Demo
//
//  Created by Vikas R S on 7/31/18.
//  Copyright © 2018 Vikas Radhakrishna Shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // here we need to return how many rows we need
    
        return 100;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // here we need to return what each cell has to contain.
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myNormalCell", for: indexPath)
    
        
        // Here we are setting the textlabel property of cell
        cell.textLabel?.text = "This is my \(indexPath.row) row"
        
        // setting the image name for image view
        cell.imageView?.image = UIImage(named: "emoji")
        
        // setting accessory type, remember accessory type is a enumeration
        
        cell.accessoryType = .disclosureIndicator
        
        // Adding detailed text label text
        cell.detailTextLabel?.text = "This is detailed label text"
        
        // code to change the background color
        cell.selectionStyle = .default;
        let bgColorView =  UIView()
        bgColorView.backgroundColor = UIColor.cyan
        cell.selectedBackgroundView = bgColorView
      
        print("This is my \(indexPath.row) row")
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

