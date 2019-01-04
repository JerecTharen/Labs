//
//  Order.swift
//  Restaurant
//
//  Created by Tyler Donohue on 1/4/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
