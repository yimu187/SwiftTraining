//
//  ContentView.swift
//  CryptoSwiftUiApp
//
//  Created by Murat Yilmaz on 15.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cryptoListViewModel : CryptoListViewModel
    
    init(){
        self.cryptoListViewModel = CryptoListViewModel()
    }
    
    var body: some View {
        
        NavigationView{
            List(cryptoListViewModel.cryptoList, id: \.id){ crypto in
                VStack{
                    Text(crypto.currency)
                        .font(.title3)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(crypto.price)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }.onAppear{
            cryptoListViewModel.donwloadCryptos()
        }.task {
            await cryptoListViewModel.downloadCryptosAsync()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
