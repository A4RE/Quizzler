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
}

let quizArray = [
    QuestionModel(questionTitle: "Four + Two is equal to Six", questionAnswer: "True"),
    QuestionModel(questionTitle: "Five - Two is equal to Two", questionAnswer: "False"),
    QuestionModel(questionTitle: "One + Two is more then Five", questionAnswer: "False")
]

