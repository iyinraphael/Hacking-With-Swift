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
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))

        if let imageToLoad = selectedImage, let count = count {
            imageView.image = UIImage(named: imageToLoad)
            navigationItem.title = "Picture \(count + 1) of 10"
        }
    }
    
    //Available to objC code (the UIbarbuttonItem). When you #selector you'll always need to use @objc too
    @objc func shareTapped() {
        guard let image = imageView?.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }

    
}
