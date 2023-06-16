//
//  GenreId.swift
//  MovieSwiftUiApp
//
//  Created by Murat Yilmaz on 16.06.2023.
//

import Foundation

struct GenreId : Decodable, Identifiable {
    
    let id = UUID()
    let page : Int
    let totalPages : Int
    let totalResults : Int
    let results : [Movie]
    
    private enum CodingKeys : String, CodingKey {
        case totalPages = "total_pages"
        case totalResults = "total_results"
        case page = "page"
        case results = "results"

    }
}
