//
//  Petition.swift
//  Project 7
//
//  Created by Iyin Raphael on 11/26/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}

struct Petitions: Codable {
    var results: [Petition]
}
