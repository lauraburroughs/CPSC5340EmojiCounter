//
//  ContentView.swift
//  EmojiCounter
//
//  Created by Laura Burroughs on 3/21/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Group {
                    EmojiItem()
                    EmojiItem()
                    EmojiItem()
                    EmojiItem()
                    EmojiItem()
                    EmojiItem()
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle(Text("Emoji Counter"))
        }
    }
}
    
    
    
struct EmojiItem: View {
    var body: some View {
        HStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .foregroundStyle(Color(.blue))
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
