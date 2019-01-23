//
//  Stack.swift
//  slackShakeJack
//
//  Created by Tyler Donohue on 1/17/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

enum Stack {
    static var context: NSManagedObjectContext = {
        let container = NSPersistentContainer(name: "Model")
        container.loadPersistentStores(completionHandler: { (description, error) in
            if let error = error {
                fatalError()
            }
        })
        return container.viewContext
    }()
}
