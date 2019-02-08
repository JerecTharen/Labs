//
//  IntermediaryModels.swift
//  RestaurantApp
//
//  Created by Tyler Donohue on 2/7/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
