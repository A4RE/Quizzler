//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var questionNumber: Int = 0
    var correctAnswers: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        questionText.numberOfLines = 0
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {

        if quizArray[questionNumber].questionAnswer == sender.currentTitle {
            correctAnswers += 1
            print(correctAnswers)
        } else {
            print(correctAnswers)
        }
        
        if questionNumber < quizArray.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            correctAnswers = 0
            print("----------")
        }
        updateUI()
    }
    
    func updateUI() {
        questionText.text = quizArray[questionNumber].questionTitle
    }
}

