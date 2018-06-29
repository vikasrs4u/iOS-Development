import Foundation

class Question
{
    var questionText:String
    var answer:Bool
    
    // non parameterized init
    init()
    {
        self.questionText = "Vikas"
        
        self.answer = true
    }
    // Single paramter is passed, but inside we need to define all the methods.
    init(text:String)
    {
        self.questionText = text
        self.answer = false // if answer is not initlaized inside this method, then we will get below error
        //error: MyPlayground.playground:15:5: error: return from initializer without initializing all stored properties
    }
    // paramterized init method
    init(text:String, correctAnswer:Bool)
    {
        self.questionText = text

        self.answer = correctAnswer
    }
    

}

 let question1 = Question()
    
    print(question1.questionText)
    print(question1.answer)
    
    let question2 = Question(text: "Will India Qualify", correctAnswer: false)

    print(question2.questionText)
    print(question2.answer)

    let question3 = Question(text: "Will I ever get internship??")

    print(question3.questionText)
    print(question3.answer)


