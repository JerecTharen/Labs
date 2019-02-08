//
//  Stack.swift
//  SlapJack
//
//  Created by Tyler Donohue on 1/25/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

enum Stack {
    static let container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "SlapJack")
        container.loadPersistentStores() { (storeDescription, error) in
            if let error = error {
                fatalError("you got error \(error)")
            }
        }
        
        return container
    }()
    
    static var context: NSManagedObjectContext {
        return container.viewContext
    }
}
