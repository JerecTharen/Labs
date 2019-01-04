//
//  CATzRgory.swift
//  clapz4Katz
//
//  Created by Tyler Donohue on 12/18/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation

struct Catz {
    let name: String
    let catagory: CatType
    
    init(name: String, catagory: CatType) {
        self.name = name
        self.catagory = catagory
    }
}

enum CatType: String {
    case cat = "cat"
    case notCat = "WTF I said this would only be for catz"
}
