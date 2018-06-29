//
//  Question.swift
//  Quizzler
//
//  Created by Vikas R S on 6/26/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question
{
    var questionText:String?
    var answer:Bool?
    
    
    init(text:String, correctAnswer:Bool)
    {
        self.questionText = text

        self.answer = correctAnswer
    }
    
}


