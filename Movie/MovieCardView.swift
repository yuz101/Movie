//
//  MovieCardView.swift
//  Movie
//
//  Created by Yuru Zhou on 1/18/22.
//

import SwiftUI

struct MovieCardView: View {
    var movie: Movie
    var body: some View {
        ZStack{
            Image(movie.image).resizable().scaledToFill()
        }
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView(movie: actionMovieData[0])
    }
}
