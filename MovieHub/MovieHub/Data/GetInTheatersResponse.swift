//
//  GetInTheatersResponse.swift
//  MovieHub
//
//  Created by Van Linh Nguyen on 8/29/21.
//

import Foundation

struct GetInTheatersResponse : Codable {
    var items: [Movie]
    var errorMessage: String
}
