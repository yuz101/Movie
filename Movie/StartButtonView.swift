//
//  StartButtonView.swift
//  Movie
//
//  Created by Yuru Zhou on 1/18/22.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("onBoarding") var isonBoarding: Bool?
    var body: some View {
        ZStack{
            Button(action: {
                //What to Perform
                isonBoarding = false
            }) {
                HStack{
                    Text("Get Started")
                    Image(systemName: "arrow.right.circle").imageScale(.large)
                }.padding(.horizontal, 30)
                .padding(.vertical, 15)
                .background(Capsule().fill(Color.black).opacity(0.7))
            }.accentColor(Color.white)
        }
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
    }
}
