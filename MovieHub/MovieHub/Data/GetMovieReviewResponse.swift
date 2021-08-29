//
//  GetMovieReviewResponse.swift
//  MovieHub
//
//  Created by Van Linh Nguyen on 8/29/21.
//

import Foundation

struct GetMovieReviewResponse: Codable {
    var imDbId: String
    var title: String
    var fullTitle: String
    var type: String
    var year: String
    var items: [MovieReviewItem]
}

struct MovieReviewItem: Codable {
    var username: String
    var userUrl: String
    var reviewLink: String
    var warningSpoiler: Bool
    var date: String
    var rate: String
    var helpful: String
    var title: String
    var content: String
}
