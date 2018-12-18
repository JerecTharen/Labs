//
//  randomizerController.swift
//  API Project coz of ALan
//
//  Created by Tyler Donohue on 12/12/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation

class RandomizerController {
    static let baseURL = "https://randomuser.me/api/"
    
    //methods
    
    static func getUser(searchTerm: String, completion: @escaping (User?) -> Void) {
        let searchURLString = baseURL + searchTerm.lowercased()
        
        _ = NetworkController.fetchUser(urlString: searchURLString, completion: { (user) in
        completion(user)
        })
    }
}
