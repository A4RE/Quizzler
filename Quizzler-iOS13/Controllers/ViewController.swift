//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var correctAnswersLabel: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizzBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        questionText.numberOfLines = 0
        progressBar.progress = 0.0
        progressBar.layer.cornerRadius = 10
        progressBar.clipsToBounds = true
        correctAnswersLabel.textColor = .white
        correctAnswersLabel.font = .systemFont(ofSize: 20, weight: .semibold)
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        if quizBrain.checkAnswer(answer: userAnswer) {
            sender.backgroundColor = .green
            sender.layer.cornerRadius = 25
            
        } else {
            sender.backgroundColor = .red
            sender.layer.cornerRadius = 25
        }
        
        quizBrain.nextQuestion()
        updateUI()
    }
    
    func updateUI() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            UIView.animate(withDuration: 0.2) { [weak self] in
                guard let self = self else {
                    return
                }
                correctAnswersLabel.text = "Correct answers: \(quizBrain.correctAnswers) / \(quizBrain.quizArray.count)"
                questionText.text = quizBrain.getQuestionText()
                trueButton.backgroundColor = .clear
                falseButton.backgroundColor = .clear
                progressBar.setProgress(quizBrain.getProgress(), animated: true)
            }
        }
    }
}

