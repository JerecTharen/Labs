//
//  NetworkController.swift
//  nobelPrize
//
//  Created by Tyler Donohue on 1/3/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import UIKit

struct NetworkController {
    
    func fetchItems(_ searchText: String, completion: @escaping ([NobelModelController]?) -> Void) {
        var url: URL
        switch NobelModelController.currentType {
        case .nobelWinner:
            url = URL(string: "http://api.nobelprize.org/v1/prize.json?year=" + searchText)!
        }
        
        DispatchQueue.main.async {
            UIApplication.shared.isNetworkActivityIndicatorVisible = true
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let data = data,
                let rawJSON = try? JSONSerialization.jsonObject(with: data),
                let json = rawJSON as? [String: Any] {
                var results: [Any] = []
                
            if let resultsArray = json["prizes"] as? [[String: Any]] {
                results = resultsArray.compactMap { NobelPrizeWinner(json: $0) }
            }
               
                DispatchQueue.main.async {
                    UIApplication.shared.isNetworkActivityIndicatorVisible = false
                }
                
                completion(results)
                
            } else {
                print("Either no data was returned, or data was not serialized.")
                
                completion(nil)
                return
            }
        }
        
        task.resume()
    }
}
