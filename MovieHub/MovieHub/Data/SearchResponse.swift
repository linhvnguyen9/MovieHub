//
//  SearchResponse.swift
//  MovieHub
//
//  Created by Van Linh Nguyen on 8/29/21.
//

import Foundation

struct SearchResponse: Codable {
    var results: [SearchItem]
    var errorMessage: String
}

struct SearchItem: Codable {
    var id: String
    var resultType: String
    var image: String
    var title: String
    var description: String
}
