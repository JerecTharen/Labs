//
//  NewDeck.swift
//  SlapJack
//
//  Created by Tyler Donohue on 1/25/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

struct Deck: Decodable {
    let shuffled: Bool
    let success: Bool
    let remaining: Int
    let deckId: String
    
    init(shuffled: Bool, success: Bool, remaining: Int, deckId: String) {
        self.shuffled = shuffled
        self.success = success
        self.remaining = remaining
        self.deckId = deckId
    }
    
}
