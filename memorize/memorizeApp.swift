//
//  memorizeApp.swift
//  memorize
//
//  Created by Deniz Demirci on 22/07/2023.
//

import SwiftUI

@main
struct memorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
