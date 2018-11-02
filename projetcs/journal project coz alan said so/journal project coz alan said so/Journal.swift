//
//  Journal.swift
//  journal project coz alan said so
//
//  Created by Tyler Donohue on 11/2/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation

class Book: NSObject, NSCoding {
    
    struct PropertyKeys {
        static let date = "date"
        static let entry = "entry"
       
    }
    
    let date: Int
    let entry: String
  
    
    override var description: String {
        return "\(date)"
    }
    
    init(date: Int, entry: String) {
        self.date = date
        self.entry = entry
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let title = aDecoder.decodeObject(forKey: PropertyKeys.date) as? Int,
            let author = aDecoder.decodeObject(forKey: PropertyKeys.entry) as? String else {return nil}
        
        func encode(with aCoder: NSCoder) {
            aCoder.encode(title, forKey: PropertyKeys.date)
            aCoder.encode(author, forKey: PropertyKeys.entry)
        }
        
    }
}
