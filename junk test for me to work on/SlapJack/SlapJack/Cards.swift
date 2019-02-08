//
//  Cards.swift
//  SlapJack
//
//  Created by Tyler Donohue on 1/25/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

struct Card: Decodable {
    let imageURL: String
    let value: String
    let suit: String
    let code: String
    let wasSlapped: Bool
    
    init(image: String, value: String, suit: String, code: String, wasSlapped: Bool) {
        self.imageURL = image
        self.value = value
        self.suit = suit
        self.code = code
        self.wasSlapped = wasSlapped
    }
}
