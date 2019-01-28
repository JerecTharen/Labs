//
//  NewDeck.swift
//  SlapJack
//
//  Created by Tyler Donohue on 1/25/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

extension NewDeck {
    convenience init?(_ context: NSManagedObjectContext, json:[[String: Any]]) {
        self.init(context: context)
        var cards:[Cards] = []
        for dict in json {
            if let card = Cards.init(context, json: dict) {
                cards.append(card)
            }
        }
        self.cards = NSMutableOrderedSet.init(array: cards)
        
    }
    
    func drawCard()->Cards? {
        guard let card = cards?.firstObject as? Cards else {
            return nil
        }
        let mutableCards = cards?.mutableCopy() as! NSMutableOrderedSet
        mutableCards.removeObject(at: 0)
        cards = mutableCards
        self.currentCard = card
        return card
    }
    
    
}
