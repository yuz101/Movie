//
//  onBoardView.swift
//  Movie
//
//  Created by Yuru Zhou on 1/27/22.
//

import SwiftUI

struct onBoardView: View {
    var movies: [Movie] = popularMovieData
    var body: some View {
        ZStack{
            TabView{
                ForEach(0..<movies.count-1){ index in
                    MovieCardView(movie: popularMovieData[index])
                }
                onBoardCardView(movie: movies[movies.count-1])
            }.tabViewStyle(PageTabViewStyle())
        }
    }
}

struct onBoardView_Previews: PreviewProvider {
    static var previews: some View {
        onBoardView()
    }
}
