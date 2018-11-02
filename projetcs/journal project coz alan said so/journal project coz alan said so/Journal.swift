//
//  Journal.swift
//  journal project coz alan said so
//
//  Created by Tyler Donohue on 11/2/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation

class Journal: NSObject, NSCoding {
    func encode(with aCoder: NSCoder) {
        <#code#>
    }
    
    
    struct PropertyKeys {
        static let date = "date"
        static let entry = "entry"
    }
    
    let date: String
    let entry: String
    
    override var description: String {
        return "\(date)"
    }
    
    init(date: String, entry: String) {
        self.date = date
        self.entry = entry
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let date = aDecoder.decodeObject(forKey: PropertyKeys.date) as? String,
            let entry = aDecoder.decodeObject(forKey: PropertyKeys.entry) as? String else {return nil}
        self.init(date: date, entry: entry)
        
        func encode(with aCoder: NSCoder) {
            aCoder.encode(date, forKey: PropertyKeys.date)
            aCoder.encode(entry, forKey: PropertyKeys.entry)
        }
    }
}
