//
//  Cards.swift
//  SlapJack
//
//  Created by Tyler Donohue on 1/25/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

extension Cards {
    convenience init?(_ context: NSManagedObjectContext, json:[String: Any]) {
        self.init(context: context)
        guard let image = json["image"] as? String, let value = json["value"] as? String, let suit = json["suit"] as? String else {
            return nil
        }
        self.imageURL = image
        self.value = value
        self.suit = suit
    }
}
