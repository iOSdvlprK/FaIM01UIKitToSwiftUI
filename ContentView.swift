//
//  ContentView.swift
//  FaIM01UIKitToSwiftUI
//
//  Created by joe on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    let titles = ["Netflix Sample App"]
    
    var body: some View {
        NavigationView {
            List(titles, id: \.self) {
                let netflixVC = HomeViewControllerRepresentable()
                    .navigationBarHidden(true)
                    .edgesIgnoringSafeArea(.all)
//                    .toolbar(.hidden) // .navigationBarHidden(true): deprecated
//                    .ignoresSafeArea(.all) // .edgesIgnoringSafeArea(.all): deprecated
                NavigationLink($0, destination: netflixVC)
            }
            .navigationTitle("SwiftUI to UIKit")
        }
    }
}

#Preview {
    ContentView()
}
