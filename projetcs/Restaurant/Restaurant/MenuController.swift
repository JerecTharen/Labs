//
//  MenuController.swift
//  Restaurant
//
//  Created by Tyler Donohue on 1/4/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation

class MenuController {
    let baseURL = URL(string: "http://localhost:8090/")!
}

func fetchCategories(completion: @escaping ([String]?) -> Void) {
    
    let categoryURL = baseURL.appendingPathComponent("categories")
}

func fetchMenuItems(forCategory categoryName: String, completion: @escaping ([MenuItem]?) -> Void) {
    
}

func submitOrder(forMenuIDs menuIds: [Int], completion: @escaping (Int?) -> Void) {
    
}
