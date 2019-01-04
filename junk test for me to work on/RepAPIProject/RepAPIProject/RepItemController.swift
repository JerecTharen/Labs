//
//  RepItemController.swift
//  RepAPIProject
//
//  Created by Tyler Donohue on 1/3/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation

func fetchItems(matching query: [String: String], completion: @escaping ([RepItem]?) -> Void) {
    let baseURL = URL(string: "")!
    
    guard let url = baseURL.withQueries(query) else {
        
        completion(nil)
        print("Unable to Buil URL >:(")
        return
    }
    
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        
        if let data = data,
            let rawJSON = try? JSONSerialization.jsonObject(with: data),
            let json = rawJSON as? [String: Any],
            let resultsArray = json["results"] as? [[String: Any]] {
            
            let repItems = resultsArray.compactMap { RepItem(json: $0) }
            completion(repItems)
            
        } else {
            print("Either no data was returned, or data was not serialized.")
            
            completion(nil)
            return
        }
    }
    
    task.resume()
}
