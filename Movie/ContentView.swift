//
//  ContentView.swift
//  Movie
//
//  Created by Yuru Zhou on 1/18/22.
//

import SwiftUI

struct ContentView: View {
    var popularMovie: [Movie] = popularMovieData
    var actionMovie: [Movie] = actionMovieData
    var romanticMovie: [Movie] = romanticMovieData
    var scifiMovie: [Movie] = scifiMovieData
    var body: some View {
        NavigationView{
        ZStack{
            Color.black.ignoresSafeArea()
            ScrollView{
                VStack(alignment: .leading){
                    Image(popularMovie[0].image).resizable().scaledToFill().frame(height: 375, alignment: .top).clipped()
                    Text("Popular Movies")
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(popularMovie){ movie in
                                NavigationLink(destination: MovieDetailView(movie: movie)){
                                    Image(movie.image).resizable().scaledToFill().frame(height: 200).cornerRadius(10)
                                }
                            }
                        }
                    }
                    Text("Action Movies").foregroundColor(.white)
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(actionMovie){ movie in
                                NavigationLink(destination: MovieDetailView(movie: movie)){
                                    Image(movie.image).resizable().scaledToFill().frame(height: 200).cornerRadius(10)
                                }
                            }
                        }
                    }
                    Text("Romantic Movies").foregroundColor(.white)
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(romanticMovie){ movie in
                                NavigationLink(destination: MovieDetailView(movie: movie)){
                                    Image(movie.image).resizable().scaledToFill().frame(height: 200).cornerRadius(10)
                                }
                            }
                        }
                    }
                    Text("Sci-Fi Movies").foregroundColor(.white)
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(scifiMovie){ movie in
                                NavigationLink(destination: MovieDetailView(movie: movie)){
                                    Image(movie.image).resizable().scaledToFill().frame(height: 200).cornerRadius(10)
                                }
                            }
                        }
                    }
                }.foregroundColor(.white)
            }
        }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
