//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Deniz Demirci on 08/08/2023.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    // static makes this global variable: EmojiMemoryGame.emojis
    // it's not an instance of EmojiMemoryGame and not all instances get an emojis.
    // it's only created once and attached to EmojiMemoryGame itself, not to its instances, such as cards.
    static let emojis = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎️", "🚓", "🚑", "🚒", "🚚", "🚛", "🚜", "🛴", "🚲", "🛵", "✈️", "🚀", "🚇", "🚂", "🚢"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}

