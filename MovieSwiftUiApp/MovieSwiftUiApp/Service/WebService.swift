//
//  WebService.swift
//  MovieSwiftUiApp
//
//  Created by Murat Yilmaz on 16.06.2023.
//

import Foundation

class WebService{

    func downloadMovies(url: URL, completion: @escaping (Result<[Mov]?, MovieError>) -> ()){
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(.badUrl))
            }
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            /*print(url)
            print(data)
             */

            
            guard let movies = try? JSONDecoder().decode(MovieWebResp.self, from: data) else{
                return completion(.failure(.parseError))
            }
            
           // print(movies)
            
            completion(.success(movies.results))
        }.resume()
    }
    
}


enum MovieError : Error {
    case parseError
    case badUrl
    case noData
}
