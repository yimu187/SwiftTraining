//
//  CryptoCurrency.swift
//  CryptoSwiftUiApp
//
//  Created by Murat Yilmaz on 15.06.2023.
//

import Foundation

// DTO
struct CryptoCurrency : Decodable, Identifiable {
    
    let id = UUID()
    let currency : String
    let price : String
    
    private enum CodingKeys : String, CodingKey {
        case currency = "currency"
        case price = "price"
    }
}
