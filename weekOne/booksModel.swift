//
//  booksModel.swift
//  weekOne
//
//  Created by Evan N on 15/06/22.
//

import Foundation
import Alamofire

struct Result: Codable {
    let data: [ResultItem]
}

struct ResultItem: Codable {
    let title: String
    let authors: [String]
    let thumbnailUrl:  String?
}
