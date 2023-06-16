//
//  Movie.swift
//  MovieSwiftUiApp
//
//  Created by Murat Yilmaz on 16.06.2023.
//

import Foundation

struct Movie : Decodable, Identifiable {
    
    let adult : Bool
    let backdropPath : String
    let genreIds : [Int]
    let id : Int
    let originalLanguage : String
    let originalTitle : String
    let overview : String
    let poularity : Int
    let posterPath : String
    let releaseDate : String
    let title : String
    let video : Bool
    let voteAverage : Double
    let voteCount : Int
    
    init(posterPath : String, overview: String, releaseDate : String){
        self.adult = false
        self.backdropPath = ""
        self.genreIds = []
        self.id = 0
        self.originalLanguage = ""
        self.originalTitle = ""
        self.overview = overview
        self.poularity = 0
        self.posterPath = posterPath
        self.releaseDate = releaseDate
        self.title = ""
        self.video = false
        self.voteAverage = 0
        self.voteCount = 0
    
    }

    
    private enum CodingKeys : String, CodingKey {
        case adult = "adult"
        case backdropPath = "backdrop_path"
        case genreIds = "genre_ids"
        case id = "id"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview = "overview"
        case poularity = "popularity"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title = "title"
        case video = "video"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"


    }
}
