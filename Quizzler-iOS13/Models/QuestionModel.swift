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

