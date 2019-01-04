//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Tyler Donohue on 1/4/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation

struct Categories {
    let categories: [String]
}

struct PreperationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preperation_time "
    }
}
