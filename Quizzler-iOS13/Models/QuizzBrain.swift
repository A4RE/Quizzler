//
//  QuizzBrain.swift
//  Quizzler-iOS13
//
//  Created by Андрей Коваленко on 06.10.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizzBrain {
    
    let quizArray = [
        QuestionModel(q: "A slug's blood is green.", a: "True"),
        QuestionModel(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        QuestionModel(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        QuestionModel(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        QuestionModel(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        QuestionModel(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        QuestionModel(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        QuestionModel(q: "Google was originally called 'Backrub'.", a: "True"),
        QuestionModel(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        QuestionModel(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        QuestionModel(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        QuestionModel(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber: Int = 0
    var correctAnswers: Int = 0
    
    mutating func checkAnswer(answer userAnswer: String) -> Bool {
        let quizAnswer = quizArray[questionNumber].questionAnswer
        if userAnswer == quizAnswer {
            correctAnswers += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quizArray[questionNumber].questionTitle
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quizArray.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber < quizArray.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            correctAnswers = 0
        }
    }
}
