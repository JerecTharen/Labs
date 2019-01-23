//
//  Cards.swift
//  slackShakeJack
//
//  Created by Tyler Donohue on 1/17/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

@objc(Card)
class Card: NSManagedObject, Decodable {
    @NSManaged var suit: String
    @NSManaged var imageURL: String
    @NSManaged var value: String
    @NSManaged var wasSlapped: Bool
    @NSManaged var deck: NewDeck?

    static var entityName: String { return "Card" }

    enum CodingKeys: String, CodingKey {
        case imageURL = "image"
        case value = "value"
        case suit = "suit"
    }

    required convenience init(from decoder: Decoder) throws {
        self.init(entity: NSEntityDescription.entity(forEntityName: Card.entityName, in: Stack.context)!, insertInto: Stack.context)
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.imageURL = try valueContainer.decode(String.self, forKey: CodingKeys.imageURL)
        self.value = try valueContainer.decode(String.self, forKey: CodingKeys.value)
        self.suit = try valueContainer.decode(String.self, forKey: CodingKeys.suit)
        self.wasSlapped = false
    }

    convenience init(from decoder: Decoder, and deck: NewDeck) {
        try! self.init(from: decoder)
        self.deck = deck
    }
}

struct Cards: Decodable {
    let cards: [Card]
}



