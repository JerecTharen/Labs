//
//  EntryController.swift
//   Alan >:(
//
//  Created by Tyler Donohue on 11/2/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation
// a model controller
class EntryController {
    
    var entries: [Entry] = []
    
   static let sharedInstance = EntryController()
    
    func addEntry(title: String, body: String) {
        let entry = Entry(title: title, body: body)
        
        entries.append(entry)
    }
    
}
