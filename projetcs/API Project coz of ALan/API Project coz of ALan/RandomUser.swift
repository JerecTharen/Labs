//
//  RandomUser.swift
//  API Project coz of ALan
//
//  Created by Tyler Donohue on 12/12/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation

struct User: Codable {
    //properties
    let imageURLString: String?
    let userImage: [String: String?]
    let name: String
    let userInfo: String?
    
    enum CodingKeys: String, CodingKey {
        case picture
        case name
        case userInfo
    }
    
    // intit
    init(from decoder: Decoder) throws {
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
        
        self.userImage = try valueContainer.decode([String: String?].self, forKey: CodingKeys.userInfo)
        self.name = try valueContainer.decode(String.self, forKey: CodingKeys.name)
        self.userInfo = try valueContainer.decode(String?.self, forKey: CodingKeys.userInfo)
        self.imageURLString = userImage["front_default"] ?? nil
    }
}
