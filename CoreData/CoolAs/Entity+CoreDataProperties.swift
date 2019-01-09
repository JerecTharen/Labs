//
//  Entity+CoreDataProperties.swift
//  CoolAs
//
//  Created by Tyler Donohue on 1/9/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }

    @NSManaged public var human: String?
    @NSManaged public var sauce: NSOrderedSet?

}

// MARK: Generated accessors for sauce
extension Entity {

    @objc(insertObject:inSauceAtIndex:)
    @NSManaged public func insertIntoSauce(_ value: Entity2, at idx: Int)

    @objc(removeObjectFromSauceAtIndex:)
    @NSManaged public func removeFromSauce(at idx: Int)

    @objc(insertSauce:atIndexes:)
    @NSManaged public func insertIntoSauce(_ values: [Entity2], at indexes: NSIndexSet)

    @objc(removeSauceAtIndexes:)
    @NSManaged public func removeFromSauce(at indexes: NSIndexSet)

    @objc(replaceObjectInSauceAtIndex:withObject:)
    @NSManaged public func replaceSauce(at idx: Int, with value: Entity2)

    @objc(replaceSauceAtIndexes:withSauce:)
    @NSManaged public func replaceSauce(at indexes: NSIndexSet, with values: [Entity2])

    @objc(addSauceObject:)
    @NSManaged public func addToSauce(_ value: Entity2)

    @objc(removeSauceObject:)
    @NSManaged public func removeFromSauce(_ value: Entity2)

    @objc(addSauce:)
    @NSManaged public func addToSauce(_ values: NSOrderedSet)

    @objc(removeSauce:)
    @NSManaged public func removeFromSauce(_ values: NSOrderedSet)

}
