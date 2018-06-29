//
//  ViewController.swift
//  Quizzler
//
//  Created by Vikas R S on 6/26/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questionListing = QuestionBank()
    
    var currentQuestionNumber = 0
    
    var answerGiven = false
    
    var currentScore = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        updateUI()
        nextQuestion()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject)
    {
        if (sender.tag == 1)
        {
            answerGiven = true
        }
        else if (sender.tag == 2)
        {
            answerGiven = false
        }
        
        checkAnswer()
  
    }
    
    
    func updateUI()
    {
        progressLabel.text =  "\(currentQuestionNumber+1) / \(questionListing.list.count)"
       
        scoreLabel.text = "Score: \(currentScore)"
        
        progressBar.frame.size.width = (view.frame.size.width/13)*CGFloat(currentQuestionNumber+1)

    }
    

    func nextQuestion()
    {
        if (currentQuestionNumber < questionListing.list.count)
        {
            updateUI()
            questionLabel.text = questionListing.list[currentQuestionNumber].questionText
        }
        else
        {
            // Alert creation code
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 10) { // change 2 to desired number of seconds
                // Your code with delay
            }
            
            let alert = UIAlertController(title: "Awesome, Your score is: \(currentScore)", message: "Would you wish to restart", preferredStyle:.alert)
            
            let alertAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(alertAction)
            present(alert, animated: true, completion: nil)
        }
       
    }
    
    
    func checkAnswer()
    {
        if (answerGiven == questionListing.list[currentQuestionNumber].answer)
        {
            currentScore = currentScore + 1
            ProgressHUD.showSuccess("Correct!!!")
        }
        else
        {
            ProgressHUD.showError("Wrong!!!")
        }
        currentQuestionNumber = currentQuestionNumber + 1
        nextQuestion()
        
    }
    
    
    func startOver()
    {
        currentQuestionNumber = 0
        currentScore = 0
        nextQuestion()
    }
    

    
}
