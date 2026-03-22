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
                            .padding(.leading, 20)
                        Text("Counter: \(item.count)")
                            .padding(.leading, 5)
                        Spacer()
                        Button("-") {
                            item.count -= 1
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .foregroundColor(.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.orange, lineWidth: 2)
                            )
                        Button("+") {
                            item.count += 1
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .foregroundColor(.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.orange, lineWidth: 2)
                            )
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle(Text("Food Fight!"))
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
