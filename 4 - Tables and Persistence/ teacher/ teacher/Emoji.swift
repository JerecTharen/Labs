//
//  Emoji.swift
//   teacher
//
//  Created by Tyler Donohue on 10/29/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation
class Emoji {
    let symbol: String
    let name: String
    let description: String
    let usage: String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
