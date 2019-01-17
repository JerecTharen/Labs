//
//  Representative.swift
//  RepresentativeAPI
//
//  Created by Tyler Donohue on 1/14/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

extension Representative {
    convenience init?(dicionary: Dictionary<String, Any>, context: NSManagedObjectContext = Stack.context) {
        
        guard let name = dicionary["name"] as? String,
        let phone = dicionary["phone"] as? String,
        let adress = dicionary["office"] as? String else { return nil }
        
        self.init(context: context)
        
        self.name = name
        self.phoneNumber = phone
        self.adress = adress
    }
}
