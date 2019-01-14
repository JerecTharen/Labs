//
//  Team.swift
//  Nathan
//
//  Created by Tyler Donohue on 1/11/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

extension Team {
    
    convenience init?(name: String, favPlayer: String, numberOfGoals: Double, context: NSManagedObjectContext = Stack.context) {
        
        self.init(context: context)
        self.name = name
        self.favPlayer = favPlayer
        self.goalsScored = numberOfGoals
        self.dateCreated = Date()
        
    }
}
