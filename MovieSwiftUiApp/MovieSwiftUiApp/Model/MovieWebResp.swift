// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct MovieWebResp: Codable {
    let page: Int
    let results: [Mov]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct Mov: Codable {
    let adult: Bool
    let backdropPath: String
    let genreIDS: [Int]
    let id: Int
    let originalLanguage, originalTitle, overview: String
    let popularity: Double
    let posterPath, releaseDate, title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int
    
    init(posterPath : String, overview: String, releaseDate : String){
        self.adult = false
        self.backdropPath = ""
        self.genreIDS = []
        self.id = 0
        self.originalLanguage = ""
        self.originalTitle = ""
        self.overview = overview
        self.popularity = 0
        self.posterPath = posterPath
        self.releaseDate = releaseDate
        self.title = ""
        self.video = false
        self.voteAverage = 0
        self.voteCount = 0
    
    }

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
