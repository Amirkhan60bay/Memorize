//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Amirkhan Alpysabayev on 6/10/20.
//  Copyright © 2020 Amirkhan Alpyspayev. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    // Why we need @Published? @Published is the property wrapper
    // Everytime the model changes, it must call objectWillChange.send(), and @Published calls it automatically
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        var emojis = ["👻","🎃","🕷","🧛🏻‍♂️","💀"]
        // MARK: - TASK 4
        emojis.shuffle()
        let random = Int.random(in: 2...5)
        return MemoryGame<String>(numberOfPairsOfCards: random) {
            pairIndex in emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
