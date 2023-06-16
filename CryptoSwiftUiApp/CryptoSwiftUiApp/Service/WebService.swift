//
//  WebService.swift
//  CryptoSwiftUiApp
//
//  Created by Murat Yilmaz on 15.06.2023.
//

import Foundation

class WebService {
    
    func downloadCurrenciesAsync(url: URL) async throws -> [CryptoCurrency]{
        let (data, _) = try await URLSession.shared.data(from: url)
        let currencies = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
        return currencies ?? []
        
    }
    
    func downloadCurrencies(url: URL, completion: @escaping (Result<[CryptoCurrency]?, CryptoError>) -> ()){
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(.badUrl))
            }
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            guard let currencies = try? JSONDecoder().decode([CryptoCurrency].self, from: data) else{
                return completion(.failure(.parseError))
            }
            
            completion(.success(currencies))
        }.resume()
    }
}

enum CryptoError : Error {
    case parseError
    case badUrl
    case noData
}
