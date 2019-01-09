//
//  Entity+CoreDataClass.swift
//  CoolAs
//
//  Created by Tyler Donohue on 1/9/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Entity)
public class Entity: NSManagedObject {
    var sauces: [Entity2]? {
        return self.sauce?.array as? [Entity2]
    }

    convenience init?(human: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Entity.entity(), insertInto: context)
        self.human = human
    }
}
