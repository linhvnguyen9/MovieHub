//
//  GetComingSoonResponse.swift
//  MovieHub
//
//  Created by Van Linh Nguyen on 8/29/21.
//

import Foundation

struct GetComingSoonResponse: Codable {
    var items: [ComingSoonMovie]
    var errorMessage: String
}

struct ComingSoonMovie: Codable {
    var id: String
    var title: String
    var fullTitle: String
    var year: String
    var releaseState: String
    var image: String
}
