//
//  newDeck.swift
//  slackShakeJack
//
//  Created by Tyler Donohue on 1/17/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

@objc(NewDeck)
class NewDeck: NSManagedObject, Decodable {
    @NSManaged var entity_id: String
    @NSManaged var cards: NSSet?
    @NSManaged var remaining: Int16
    
    static var entityName: String { return "NewDeck" }
    
    enum CodingKeys: String, CodingKey {
        case entity_id = "deck_id"
        case cards = "cards"
        case remaining = "remianing"
    }
    
    required convenience init(from decoder: Decoder) throws {
        self.init(entity: NSEntityDescription.entity(forEntityName: NewDeck.entityName, in: Stack.context)!, insertInto: Stack.context)
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.entity_id = try valueContainer.decode(String.self, forKey: CodingKeys.entity_id)
        self.remaining = try valueContainer.decode(Int16.self, forKey: CodingKeys.remaining)
        if let cards = try? valueContainer.decode([Card].self, forKey: CodingKeys.cards) {
            self.cards = NSSet(array: cards)
        } else {
            self.cards = nil
        }
    }
}
