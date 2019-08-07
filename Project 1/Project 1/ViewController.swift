//
//  ViewController.swift
//  Project 1
//
//  Created by Iyin Raphael on 7/11/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var pictures = [String]()
    var imageView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Storm Viewer"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareApp))

        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        tableView.tableFooterView = .init(frame: .zero)
        
        for item in items {
            if item.hasPrefix("nssl"){
                pictures.append(item)
            }
        }
        pictures.sort()
        print(pictures)
    }
    
    @objc func shareApp() {
        let share = "Download Strom Viewer to experience amazing Natural disaster images"
        
        let av = UIActivityViewController(activityItems: [share], applicationActivities: [])
        av.popoverPresentationController?.sourceView = self.view
        present(av, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController{
            
            vc.selectedImage = pictures[indexPath.row]
            vc.count = indexPath.row
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

