//
//  Score.swift
//  score keeper game
//
//  Created by Tyler Donohue on 11/14/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation
class Score: NSObject, NSCoding {
    
    struct Score {
        static let score = "score"
    }
    
    let score: Int
    
    init(score: Int) {
        self.score = score
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let score = aDecoder.decodeObject(forKey: Score.score) as? Int
        else {return nil}
        self.init(score: score)
        
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(score, forKey: Score.score)
    }
    
}

