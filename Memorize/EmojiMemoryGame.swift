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
    
    private static func createMemoryGame() -> MemoryGame<String> {
        
        let theme = Theme()
        var emojis = theme.emojis
//        // MARK: - TASK 4
        emojis.shuffle()
        return MemoryGame<String>(with: theme) {
            pairIndex in emojis[pairIndex]
        }
    }
    
    
    // MARK: - Access to the Model
    lazy var theme = model.theme
    
    lazy var score = model.score
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
        score = model.score
    }
    
    func newGame(){
        model = EmojiMemoryGame.createMemoryGame()
        self.theme = model.theme
        self.score = model.score 
    }
}
