//
//  nobelPrizeWinner.swift
//  nobelPrize
//
//  Created by Tyler Donohue on 1/3/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//


import Foundation

struct NobelWinner {
    
    var year: String
    var category: String
    var laureates: [Laureate]
    
    init?(json: [String : Any]) {
        
        guard let year = json["year"] as? String,
            let category = json["category"] as? String,
            let laureateArray = json["laureates"] as? [[String : Any]] else {return nil}
        
        self.year = year
        self.category = category
        self.laureates = laureateArray.compactMap({ Laureate(json: $0) })
        
    }
}

struct Laureate {
    var firstName: String
    var motivation: String?
    var surName: String
    
    init?(json: [String : Any]) {
        
        guard let firstName = json["firstname"] as? String,
            let surName = json["surname"] as? String else {return nil}
        
        let motivation = json["motivation"] as? String
        
        self.firstName = firstName
        self.surName = surName
        self.motivation = motivation ?? ""
    }
}
