//
//  DetailViewController.swift
//  Project1-3Recap
//
//  Created by Iyin Raphael on 8/8/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //MARK: - Properties:
    @IBOutlet weak var imageView: UIImageView!
    var country: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        if let country = country {
            let image = UIImage(named: country)
            imageView.image = image
        }
    }

}
