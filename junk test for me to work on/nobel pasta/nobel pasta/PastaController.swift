//
//  PastaController.swift
//  nobel pasta
//
//  Created by Tyler Donohue on 12/17/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation


class PastaController {
    
    func getPasta(matching query: [String: String], completion: @escaping (Pasta?) -> Void) {
        
        let baseURL = URL(string: "https://www.food2fork.com/api/search?key=f3230e9056a3fab88f83ce336204b9bf")!
        
        guard let url = baseURL.withQueries(query) else {
            
            completion(nil)
            print("Unable to build URL.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data,
                let rawJSON = try JSONSerialization.jsonObject(with: data),
                let json = rawJSON as? [String: Any],
                let resultsArray = json["results"] as? [[String: Any]] {
                
                pastas = resultsArray.compactMap { Pasta(from: $0 as! Decoder) }
                completion(pastas)

            } else {
                print("Either no data was returned, or data was not serialized.")
                completion(nil)
                return
            }
        }
        task.resume()
    }
}
