//
//  DetailViewController.swift
//  Project 1
//
//  Created by Iyin Raphael on 7/18/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //Property
    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    var count: Int?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true

        if let imageToLoad = selectedImage, let count = count {
            imageView.image = UIImage(named: imageToLoad)
            navigationItem.title = "Picture \(count + 1) of 10"
        }
    }
    

}
