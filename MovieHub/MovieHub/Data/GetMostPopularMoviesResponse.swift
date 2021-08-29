//
//  GetMostPopularMoviesResponse.swift
//  MovieHub
//
//  Created by Van Linh Nguyen on 8/29/21.
//

import Foundation

struct GetMostPopularMoviesResponse: Codable {
    var items : [Movie]
    var errorMessage: String
}
