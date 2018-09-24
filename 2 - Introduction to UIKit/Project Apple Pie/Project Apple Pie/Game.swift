//
//  Game.swift
//  Project Apple Pie
//
//  Created by Tyler Donohue on 9/21/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation
struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}

