//
//  ViewController.swift
//  project 8
//
//  Created by Iyin Raphael on 4/30/20.
//  Copyright © 2020 Iyin Raphael. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cluesLabel: UILabel!
    var scoreLabel: UILabel!
    var answersLabel: UILabel!
    var currentAnswer: UITextField!
    var letterButtons = [UIButton]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
    }

}

