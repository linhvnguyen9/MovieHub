//
//  Movie.swift
//  MovieHub
//
//  Created by Van Linh Nguyen on 8/29/21.
//

import Foundation

struct Movie: Codable {
    var id: String
    var title: String
    var fullTitle: String
    var year: String
    var image: String
    var imDbRating: String
    var imDbRatingCount: String
}
