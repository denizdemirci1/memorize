//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Deniz Demirci on 08/08/2023.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    // static makes this global variable: EmojiMemoryGame.emojis
    // it's not an instance of EmojiMemoryGame and not all instances get an emojis.
    // it's only created once and attached to EmojiMemoryGame itself, not to its instances, such as cards.
    private static let emojis = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎️", "🚓", "🚑", "🚒", "🚚", "🚛", "🚜", "🛴", "🚲", "🛵", "✈️", "🚀", "🚇", "🚂", "🚢"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: 8) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}

