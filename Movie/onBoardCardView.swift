//
//  onBoardView.swift
//  Movie
//
//  Created by Yuru Zhou on 1/18/22.
//

import SwiftUI

struct onBoardCardView: View {
    var body: some View {
        ZStack{
            Image("spider-man").resizable().scaledToFill()
            VStack{
                Spacer()
                StartButtonView().padding(50)
            }
        }
    }
}

struct onBoardCardView_Previews: PreviewProvider {
    static var previews: some View {
        onBoardCardView()
    }
}
