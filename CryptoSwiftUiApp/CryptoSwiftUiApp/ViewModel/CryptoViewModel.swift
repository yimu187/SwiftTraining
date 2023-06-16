//
//  CryptoViewModel.swift
//  CryptoSwiftUiApp
//
//  Created by Murat Yilmaz on 15.06.2023.
//

import Foundation

class CryptoListViewModel : ObservableObject{
    
    @Published var cryptoList = [CryptoViewModel]()
    
    let web = WebService();
    
    
    func downloadCryptosAsync() async {
        let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!

        do {
            let cryptos = try await web.downloadCurrenciesAsync(url: url);
            DispatchQueue.main.async {
                self.cryptoList = cryptos.map(CryptoViewModel.init)
            }
            
        }catch{
            print("error")
        }
    }
    
    func donwloadCryptos(){
        let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!
        
        
        web.downloadCurrencies(url: url){ result in
            
            switch result{
            case .failure(let error):
                print(error)
            case .success(let cryptos):
                if let cryptos = cryptos {
                    DispatchQueue.main.async {
                        self.cryptoList = cryptos.map(CryptoViewModel.init)
                    }
                }
            
            }
        }
            
    }
}

// Model
struct CryptoViewModel {
    let crypto : CryptoCurrency
    
    var id : UUID {
        crypto.id
    }
    
    var currency  : String {
        crypto.currency
    }
    
    var price : String {
        crypto.price
    }
}
