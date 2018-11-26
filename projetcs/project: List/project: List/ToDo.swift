//
//  ToDo.swift
//  project: List
//
//  Created by Tyler Donohue on 11/20/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation
import UIKit

struct ToDo {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static func loadSampleToDos() -> [ToDo] {
        let todo1 = ToDo(title: "ToDo One", isComplete: false, dueDate: Date(), notes: "Notes 1")
        let todo2 = ToDo(title: "ToDo two", isComplete: false, dueDate: Date(), notes: "Notes 2")
        let todo3 = ToDo(title: "ToDo three", isComplete: false, dueDate: Date(), notes: "Notes 3")
        
        return [todo1, todo2, todo3]
    }
    
    static func loadToDos() -> [ToDo]? {
        return nil
    }
}
