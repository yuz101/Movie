//
//  MovieApp.swift
//  Movie
//
//  Created by Yuru Zhou on 1/18/22.
//

import SwiftUI

@main
struct MovieApp: App {
    @AppStorage("onBoarding") var isonBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isonBoarding{
                //Somescreen
                onBoardView()
            }else{
                ContentView()
            }
        }
    }
}
