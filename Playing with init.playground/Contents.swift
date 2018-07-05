import Foundation

class Question
{
    var questionText:String
    var answer:Bool
    
    // Designated Initailizer
    init()
    {
        self.questionText = "Vikas"
        
        self.answer = true
    }
    
    // convience intializer
    convenience init(text:String)
    {
        self.init() // every convenience intializer should call designated intialzer or a convenience intialzer at the beginning
        self.questionText = text
        self.answer = false // if answer is not initlaized inside this method, then we will get below error
        //error: MyPlayground.playground:15:5: error: return from initializer without initializing all stored properties
    }
    
    // convience intializer
    convenience init(textValue:String, correctAnswer:Bool)
    {
        self.init(text: textValue) // every convenience intializer should call designated intialzer or a convenience intialzer at the beginning

        self.answer = correctAnswer
    }
    

}

 let question1 = Question()
    
    print(question1.questionText)
    print(question1.answer)
    
    let question2 = Question(textValue: "Will India Qualify", correctAnswer: true)

    print(question2.questionText)
    print(question2.answer)

    let question3 = Question(text: "Will I ever get internship??")

    print(question3.questionText)
    print(question3.answer)


