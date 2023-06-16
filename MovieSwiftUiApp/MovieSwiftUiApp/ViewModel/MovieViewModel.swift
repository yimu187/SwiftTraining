//
//  MovieViewModel.swift
//  MovieSwiftUiApp
//
//  Created by Murat Yilmaz on 16.06.2023.
//

import Foundation

class MovieListViewModel : ObservableObject {
    
    @Published var movieList = [MovieViewModel]()
    
    let web = WebService()
    
    func downloadMovies(){
        print("view model downloadMovies")
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?page=1&api_key=b1b1a1698a893dfad3e0d88d72261f37")!
        
        
        web.downloadMovies(url: url){ result in
            
            switch result{
            case .failure(let error):
                print(error)
            case .success(let movies):
                if let movies = movies {
                    DispatchQueue.main.async {
                        self.movieList = movies.map(MovieViewModel.init)
                    }
                }
            
            }
        }
            
    }
}


struct MovieViewModel : Identifiable, Hashable {
    static func == (lhs: MovieViewModel, rhs: MovieViewModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    
    let movie : Mov
    
    var id : Int {
        movie.id
    }
    
    var overview  : String {
        movie.overview
    }
    
    var releaseDate : String {
        movie.releaseDate
    }

    var posterPath : String {
        movie.posterPath
    }
    
    var originalTitle : String {
        movie.originalTitle
    }
    
}
