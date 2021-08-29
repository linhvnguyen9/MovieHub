//
//  GetMovieDetailResponse.swift
//  MovieHub
//
//  Created by Van Linh Nguyen on 8/29/21.
//

import Foundation

struct GetMovieDetailResponse: Codable {
    var id: String
    var title: String
    var fullTitle: String
    var type: String
    var year: String
    var image: String
    var releaseDate: String
    var runtimeMins: String
    var runtimeStr: String
    var plot: String
    var awards: String
    var directors: String
    var actorList: [MovieActor]
    var errorMessage: String
}

struct MovieActor: Codable {
    var id: String
    var image: String
    var name: String
    var asCharacter: String
}
