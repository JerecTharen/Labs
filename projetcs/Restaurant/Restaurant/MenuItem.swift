//
//  MenuItem.swift
//  Restaurant
//
//  Created by Tyler Donohue on 1/4/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation

struct MenuItem: Codable {
    var id: Int
    var name: String
    var detailText: String
    var price: Double
    var catagory: String
    var imageURL: URL
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case detailText = "description"
        case price
        case catagory
        case imageURL = "image_url"
    }
}
struct MenuItems: Codable {
    let iems: [MenuItem]
}

struct Catagories {
    let catagories: [String]
}

struct PreperationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preperation_time"
    }
}
