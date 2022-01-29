//
//  MovieDetailView.swift
//  Movie
//
//  Created by Yuru Zhou on 1/27/22.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Image(movie.image).resizable().scaledToFill().frame(height: 350, alignment: .top).clipped()
                    VStack(alignment: .leading, spacing: 20){
                        Text(movie.title).font(.title).fontWeight(.bold)
                        Text("\(movie.release_year) \(movie.category) \(movie.runtime)")
                        Text(movie.description)
                    }.padding(15)
                }.navigationBarHidden(true)
                    .navigationBarTitle(movie.title, displayMode: .inline)
            }.edgesIgnoringSafeArea(.top)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: popularMovieData[0])
    }
}
