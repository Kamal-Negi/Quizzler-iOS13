//
//  QuesBrain.swift
//  Quizzler-iOS13
//
//  Created by GMP on 13/01/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    
    let ques=[
        Questions(q: "A slug's blood is green.", a: "True"),
                Questions(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                Questions(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                Questions(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                Questions(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                Questions(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                Questions(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                Questions(q: "Google was originally called 'Backrub'.", a: "True"),
                Questions(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                Questions(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                Questions(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                Questions(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
]
   
    var questionNumber=0
    var score=0
    
    mutating func checkAnswer(_ userAnswer:String)->Bool{
        if(userAnswer==ques[questionNumber].answer){
            score+=1
            return true
        }
        else{
            return false
        }
        
    }
    
    func getQuestionText()->String{
        return ques[questionNumber].text
    }
    
    func getProgress()->Float{
        return Float(questionNumber+1)/Float(ques.count)
    }
    
    mutating func getNextQuestion(){
        if questionNumber+1<ques.count{
            questionNumber+=1
        }
        else{
            questionNumber = 0
            score=0
        }
    }
    
    func getScore()->Int{
        return score
    }
}
