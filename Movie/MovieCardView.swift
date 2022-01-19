//
//  MovieCardView.swift
//  Movie
//
//  Created by Yuru Zhou on 1/18/22.
//

import SwiftUI

struct MovieCardView: View {
    var body: some View {
        ZStack{
            Image("spider-man").resizable().scaledToFill()
        }
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView()
    }
}
