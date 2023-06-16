//
//  ContentView.swift
//  MovieBook
//
//  Created by Murat Yilmaz on 15.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            List{
                ForEach(myFavorites){ favorite in
                    Section(header: Text(favorite.title)){
                        ForEach(favorite.elements){ element in
                            NavigationLink(destination: DetailsView(chosenElement: element)){
                             
                                HStack{
                                    Image(element.imagename)
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .aspectRatio(contentMode: .fit)
                                    Text(element.name)
                                }
                            }
                            
                            
                        }
                    }
                    
                }
            }
        }.navigationTitle("Cartoon App")
        
      
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
