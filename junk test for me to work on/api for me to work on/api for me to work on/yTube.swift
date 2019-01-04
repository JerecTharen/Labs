//
//  yTube.swift
//  api for me to work on
//
//  Created by Tyler Donohue on 12/14/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation
class Pasta: NSObject, NSCoding {

    struct PKeys {
        static let name = "name"
        static let rating = "rating"
    }
    
    let name: String
    let rating: Int
    
    init(name: String, rating: Int) {
        self.name = name
        self.rating = rating
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let name = aDecoder.decodeObject(forKey: PKeys.name) as? String,
            let rating = aDecoder.decodeObject(forKey: PKeys.rating) as? Int else {return nil}
        self.init(name: name, rating: rating)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: PKeys.name)
        aCoder.encode(name, forKey: PKeys.rating)
    }
    
    
}
