//
//  DetailView.swift
//  MovieSwiftUiApp
//
//  Created by Murat Yilmaz on 16.06.2023.
//

import SwiftUI

struct DetailView: View {
    
    var selectedMovie : MovieViewModel
    
    
    var body: some View {
        VStack{
            AsyncImage(
                url : URL(string : "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/" + selectedMovie.posterPath),
                content : { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 500, height: 400)
                        
                    
                },
                placeholder: {ProgressView()}
            )
            
            Text("Title: " + selectedMovie.originalTitle)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .center)
                
            Text("Release Date: " + selectedMovie.releaseDate)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .center)
            
            Text("Overview: ")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .center)
                .underline()
            
            Text(selectedMovie.overview)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(Edge.Set.horizontal, 60)
                .padding(Edge.Set.vertical, 10)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(.black)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        var mov = Mov(posterPath: "fiVW06jE7z9YnO4trhaMEdclSiC.jpg", overview: "temp", releaseDate: "2023-05-17");
        
        DetailView(selectedMovie: MovieViewModel.init(movie: mov))
    }
}
