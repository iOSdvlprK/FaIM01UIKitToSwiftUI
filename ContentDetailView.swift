//
//  ContentDetailView.swift
//  FaIM01UIKitToSwiftUI
//
//  Created by joe on 4/20/24.
//

import SwiftUI

struct ContentDetailView: View {
    @State var item: Item?
    
    var body: some View {
        VStack {
            if let item = item {
                Image(uiImage: item.image)
                    .aspectRatio(contentMode: .fit)
                
                Text(item.description)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
            } else {
                Color(UIColor.systemBackground)
            }
        }
    }
}

#Preview {
    let item0 = Item(description: "fun, fantasy, animation, action, star-studded", imageName: "poster0")
    return ContentDetailView(item: item0)
}

/*
struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let item0 = Item(description: "fun, fantasy, animation, action, star-studded", imageName: "poster0")
        ContentDetailView(item: item0)
    }
} */
