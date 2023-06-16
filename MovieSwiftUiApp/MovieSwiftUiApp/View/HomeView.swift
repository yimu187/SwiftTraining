//
//  HomeView.swift
//  MovieSwiftUiApp
//
//  Created by Murat Yilmaz on 16.06.2023.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var movieListViewModel : MovieListViewModel

    init(){
        self.movieListViewModel = MovieListViewModel()
        movieListViewModel.downloadMovies()
    }
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    
    var body: some View {
        
        
        NavigationView{
            
            ScrollView {
                       LazyVGrid(columns: columns) {
                           ForEach(movieListViewModel.movieList, id: \.self) { movie in
                               
                               NavigationLink(destination: DetailView(selectedMovie: movie)){
                                   
                                   
                                   VStack{
                                       
                                       VStack{
                                           AsyncImage(
                                               url : URL(string : "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/" + movie.posterPath),
                                               content : { image in
                                                   image.resizable()
                                                       .aspectRatio(contentMode: .fit)
                                                       .frame(width: 200, height: 200)
                                                   
                                               },
                                               placeholder: {ProgressView()}
                                           )
                                              
                                       }
                                       
                                       VStack{
                                           
                                           Text(movie.originalTitle)
                                               .foregroundColor(.white)
                                               .frame(maxWidth: .infinity, alignment: .leading)
                                               
                                           Text(movie.releaseDate)
                                               .foregroundColor(.white)
                                               .frame(maxWidth: .infinity, alignment: .leading)
                                               
                                           
                                       }.scaledToFit()
                                   }
                               }
                               
                           }
                       }.background(.black)
                   }
            
            
            

            
        }.onAppear{
            movieListViewModel.downloadMovies()
        }


    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
