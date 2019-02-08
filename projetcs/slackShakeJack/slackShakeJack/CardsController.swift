//
//  CardsController.swift
//  slackShakeJack
//
//  Created by Tyler Donohue on 1/17/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

class CardController {
    
    static var sharedController = CardController()
    
    private var deck: NewDeck?
    private var score: Int = 0
    var orderedCards = [Card]()
    
    private func createNewDeck(completion: ((NewDeck?) -> Void)? = nil) {
        guard let url = URL(string: "https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1") else {
            print("bad URL")
            return
        }
        
        NetworkController.performNetworkRequest(for: url) { (data, error) in
            guard let data = data else { return }
            
            let decoder = JSONDecoder()
            var results: NewDeck?
            
            if let deck = try? decoder.decode(NewDeck.self, from: data) {
                results = deck
            }
            
            if let completion = completion {
                completion(results)
            }
        }
    }
    
    func shuffleDeck() {
        guard let deck = deck, let url = URL(string: "https://deckofcardsapi.com/api/deck/\(deck.entity_id)/shuffle/") else {
            print("Bad URL Link")
            return
        }
        
        NetworkController.performNetworkRequest(for: url) { (data, error) in
            guard let data = data else {return}
            let decoder = JSONDecoder()
            if let deck = try? decoder.decode(NewDeck.self, from: data) {
                self.deck = deck
            }
        }
    }
    
    func drawCard(completion: @escaping ((Card?) -> Void)) {
        guard let deck = deck, let url = URL(string: "https://deckofcardsapi.com/api/deck/\(deck.entity_id)/draw/?count=1") else {
            print("you got a bad URL in me")
            return
        }
        
        NetworkController.performNetworkRequest(for: url) { (data, error) in
            do {
                guard let data = data else { return }
                
                let decoder = JSONDecoder()
                
                let results = try decoder.decode()
                
                completion(results.cards.first)
            } catch {
                print(error)
            }
        }
    }
    
    private func saveToPersistentStorage() {
        do {
            try Stack.context.save()
        } catch {
            Stack.context.rollback()
            print("save failed: \(error)")
        }
    }
    
    func setDeck() {
        let deckFetchRequest = NSFetchRequest<NewDeck>(entityName: NewDeck.entityName)
        
        do {
            if let coreDataDeck = try Stack.context.fetch(deckFetchRequest).first {
                deck = coreDataDeck
            } else {
                createNewDeck { (deck) in
                    guard let unwrappedDeck = deck else { return }
                    self.deck = unwrappedDeck
                    self.saveToPersistentStorage()
                }
            }
        } catch {
            print("unable to fetch data from context")
        }
    }
    func getDeck() -> NewDeck {
        guard let deck = deck else { fatalError() }
        return deck
    }
    
    func setScore() {
        let count = orderedCards.count
        if self.orderedCards[count - 1].wasSlapped == false {
            if self.orderedCards[count - 1].value == "JACK" {
                score += 1
            } else {
                score -= 1
            }
        }
        orderedCards[count - 1].wasSlapped = true
        
        deck?.cards = NSSet(array: orderedCards)
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getSlappedCards() -> Int {
        var slappedCards = 0
        for card in orderedCards {
            if card.wasSlapped == true && card.value == "JACK" {
                slappedCards += 1
            }
        }
        return slappedCards
    }
    
    func getFailedSlappedCards() -> Int {
        var failedSlaps = 0
        for card in orderedCards {
            if card.wasSlapped == true && card.value != "jack luvs pasta" {
                failedSlaps += 1
            }
        }
        return failedSlaps
    }
    
    func getFailedJacks() -> Int {
        var failedJacks = 0
        for card in orderedCards {
            if card.value == "jack really love his pasta" && card.wasSlapped == false {
                failedJacks += 1
            }
        }
        return failedJacks
    }
    
}
