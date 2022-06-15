//
//  booksModel.swift
//  weekOne
//
//  Created by Evan N on 15/06/22.
//

import Foundation

struct Result: Codable {
    let data: [ResultItem]
}

struct ResultItem: Codable {
    let title: String
    let author: String
    let year:  Int
}
