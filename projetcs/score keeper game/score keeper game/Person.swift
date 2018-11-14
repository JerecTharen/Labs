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
    }
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let name = aDecoder.decodeObject(forKey: Person.name) as? String
            else {return nil}
        self.init(name: name)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: Person.name)
    }
    
}
