//
//  File.swift
//  Movie App
//
//  Created by Sherif on 8/7/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import Foundation

// MARK: - MovieModel
struct SearchResults: Codable {
    let search: [Movie]?
    let totalResults, response: String?
    
    enum CodingKeys: String, CodingKey {
        case search = "Search"
        case totalResults
        case response = "Response"
    }
}

// MARK: - Search
struct Movie: Codable {
    let title, year, imdbID: String?
    let type: TypeEnum?
    let poster: String?
    
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case type = "Type"
        case poster = "Poster"
    }
}

enum TypeEnum: String, Codable {
    case movie = "movie"
    case series = "series"
}
