//
//  ViewController.swift
//  Project1-3Recap
//
//  Created by Iyin Raphael on 8/8/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    //Properties
    var flagsOfCountries = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasSuffix("png") {
                flagsOfCountries.append(item)
            }
        }
        print(flagsOfCountries)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flagsOfCountries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countries", for: indexPath)
        let country = flagsOfCountries[indexPath.row]
        let name = country.split(separator: "@").first ?? ""
        cell.textLabel?.text = String(name)
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "DetailView") as? DetailViewController {
            vc.country = flagsOfCountries[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

