//
//  Person.swift
//  score keeper game
//
//  Created by Tyler Donohue on 11/14/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation
class Person: NSObject, NSCoding {
    
    struct Person {
        static let name = "name"
        static let score = "score"
    }
    
    let name: String
    let score: Int
    
    init(name: String, score: Int) {
        self.name = name
        self.score = score
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let name = aDecoder.decodeObject(forKey: Person.name) as? String,
            let score = aDecoder.decodeObject(forKey: Person.score) as? Int
            else {return nil}
        self.init(name: name, score: score)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: Person.name)
        aCoder.encode(score, forKey: Person.score)
    }
    
}
