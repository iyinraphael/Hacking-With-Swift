//
//  ViewController.swift
//  project 8
//
//  Created by Iyin Raphael on 4/30/20.
//  Copyright © 2020 Iyin Raphael. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    var cluesLabel: UILabel!
    var scoreLabel: UILabel!
    var answersLabel: UILabel!
    var currentAnswer: UITextField!
    var letterButtons = [UIButton]()
    var activatedButtons = [UIButton]()
    
    var solutions = [String]()
    var score = 0
    var level = 1

    //MARK: - Views
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.textAlignment = .right
        scoreLabel.text = "Score 0"
        view.addSubview(scoreLabel)
        
        cluesLabel = UILabel()
        cluesLabel.translatesAutoresizingMaskIntoConstraints = false
        cluesLabel.font = UIFont.systemFont(ofSize: 24)
        cluesLabel.text = "CLUES"
        cluesLabel.numberOfLines = 0
        cluesLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(cluesLabel)
        
        answersLabel = UILabel()
        answersLabel.translatesAutoresizingMaskIntoConstraints = false
        answersLabel.font = UIFont.systemFont(ofSize: 24)
        answersLabel.text = "ANSWERS"
        answersLabel.numberOfLines = 0
        answersLabel.textAlignment = .right
        answersLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(answersLabel)
        
        currentAnswer = UITextField()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.placeholder = "Tap letters to guess"
        currentAnswer.textAlignment = .center
        currentAnswer.font = UIFont.systemFont(ofSize: 44)
        currentAnswer.isUserInteractionEnabled = false
        view.addSubview(currentAnswer)
        
        //Note: We don't need to store those a properties on the view controller, because we don't need to adjest them later
        let submitButton = UIButton(type: .system)
        submitButton.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.setTitle("SUBMIT", for: .normal)
        view.addSubview(submitButton)
        
        let clearButton = UIButton(type: .system)
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.setTitle("CLEAR", for: .normal)
        view.addSubview(clearButton)
        
        let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonsView)
        
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            cluesLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 100.0),
            cluesLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant: -100.0),
            
            answersLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            answersLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -100.0),
            answersLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.4, constant: -100.0),
            answersLabel.heightAnchor.constraint(equalTo: cluesLabel.heightAnchor),
            
            currentAnswer.topAnchor.constraint(equalTo: cluesLabel.bottomAnchor, constant: 20.0),
            currentAnswer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            currentAnswer.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.5),
            
            submitButton.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor),
            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100.0),
            submitButton.heightAnchor.constraint(equalToConstant: 44.0),
            
            clearButton.centerYAnchor.constraint(equalTo: submitButton.centerYAnchor),
            clearButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100.0),
            clearButton.heightAnchor.constraint(equalToConstant: 44.0),
            
            buttonsView.widthAnchor.constraint(equalToConstant: 750.0),
            buttonsView.heightAnchor.constraint(equalToConstant: 320.0),
            buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsView.topAnchor.constraint(equalTo: submitButton.bottomAnchor, constant: 20.0),
            buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20.0)
        ])
        
        // set some values for the width and height of each button
        let width = 150
        let height = 80

        // create 20 buttons as a 4x5 grid
        for row in 0..<4 {
            for col in 0..<5 {
                // create a new button and give it a big font size
                let letterButton = UIButton(type: .system)
                letterButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)

                // give the button some temporary text so we can see it on-screen
                letterButton.setTitle("WWW", for: .normal)

                // calculate the frame of this button using its column and row
                let frame = CGRect(x: col * width, y: row * height, width: width, height: height)
                letterButton.frame = frame

                // add it to the buttons view
                buttonsView.addSubview(letterButton)

                // and also to our letterButtons array
                letterButtons.append(letterButton)
            }
        }
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()

       }
    
    @objc func letterTapped(_ sender: UIButton) {
        
    }
    @objc func submitTapped(_ sender: UIButton) {
        
    }
    @objc func clearTapped(_ sender: UIButton) {
        
    }
    

}

