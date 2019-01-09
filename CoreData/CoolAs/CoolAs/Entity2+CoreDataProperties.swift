//
//  Entity2+CoreDataProperties.swift
//  CoolAs
//
//  Created by Tyler Donohue on 1/9/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//
//

import Foundation
import CoreData


extension Entity2 {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity2> {
        return NSFetchRequest<Entity2>(entityName: "Entity2")
    }

    @NSManaged public var sauce: String?
    @NSManaged public var human: Entity?

}
