//
//  QuestionModel.swift
//  Quizzler-iOS13
//
//  Created by Андрей Коваленко on 06.10.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuestionModel {
    let questionTitle: String
    let questionAnswer: String
    init(q: String, a: String) {
        questionTitle = q
        questionAnswer = a
    }
}


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

