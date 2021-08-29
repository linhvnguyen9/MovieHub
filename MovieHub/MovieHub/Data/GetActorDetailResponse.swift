//
//  GetActorDetailResponse.swift
//  MovieHub
//
//  Created by Van Linh Nguyen on 8/29/21.
//

import Foundation

struct GetActorDetailResponse: Codable {
    var id: String
    var name: String
    var role: String
    var image: String
    var summary: String
    var birthDate: String
    var deathDate: String
    var awards: String
    var height: String
    var knownFor: [ActorKnownFor]
    var castMovies: [ActorCastMovie]
}

struct ActorKnownFor: Codable {
    var id: String
    var title: String
    var fullTitle: String
    var year: String
    var image: String
    var role: String
}

struct ActorCastMovie: Codable {
    var id: String
    var role: String
    var title: String
    var year: String
    var description: String
}
