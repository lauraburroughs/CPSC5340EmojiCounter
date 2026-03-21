//
//  ContentView.swift
//  EmojiCounter
//
//  Created by Laura Burroughs on 3/21/26.
//

import SwiftUI

struct EmojiItem: Identifiable {
    var id = UUID()
    var emojiName: String
    var count : Int
}

struct ContentView: View {
    @State private var items = [
        EmojiItem(emojiName: "🍔", count: 0),
        EmojiItem(emojiName: "🍕", count: 0),
        EmojiItem(emojiName: "🌮", count: 0),
        EmojiItem(emojiName: "🌭", count: 0),
        EmojiItem(emojiName: "🍝", count: 0)
    ]
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($items) { $item in
                    HStack {
                        Text(item.emojiName)
                        Spacer()
                        Button("-") {
                            item.count -= 1
                        }
                        Text("\(item.count)")
                        Button("+") {
                            item.count += 1
                        }
                    }
                    .padding(.leading, 20)
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle(Text("Emoji Counter"))
        }
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
