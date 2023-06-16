//
//  DetailsView.swift
//  MovieBook
//
//  Created by Murat Yilmaz on 15.06.2023.
//

import SwiftUI

struct DetailsView: View {
    var chosenElement : FavoriteElement
    
    var body: some View {
        VStack{
            Image(chosenElement.imagename)
                .resizable()
                .frame(width: 300, height: 300)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenElement: eric)
    }
}
