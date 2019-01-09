//
//  Entity2+CoreDataClass.swift
//  CoolAs
//
//  Created by Tyler Donohue on 1/9/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Entity2)
public class Entity2: NSManagedObject {
    convenience init?(sauce: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Entity2.entity(), insertInto: context)
        self.sauce = sauce
    }

}
