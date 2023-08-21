//
//  memorizeApp.swift
//  memorize
//
//  Created by Deniz Demirci on 22/07/2023.
//

import SwiftUI

@main
struct memorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
