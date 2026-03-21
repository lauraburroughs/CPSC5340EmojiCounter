//
//  ContentView.swift
//  EmojiCounter
//
//  Created by Laura Burroughs on 3/21/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .background(Color("theme"))
        .foregroundStyle(Color("theme"))
        .padding()
    }
}













#Preview {
    ContentView()
        .preferredColorScheme(.light)
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
