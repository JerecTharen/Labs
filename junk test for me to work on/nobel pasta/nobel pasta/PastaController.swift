//
//  PastaController.swift
//  nobel pasta
//
//  Created by Tyler Donohue on 12/17/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation


class PastaController {
    
    static func getPasta(matching query: [String: String], completion: @escaping ([Pasta]?) -> Void) {
        
        let baseURL = URL(string: "https://www.food2fork.com/api/search?key=f3230e9056a3fab88f83ce336204b9bf&q=pasta")!
        
        guard let url = baseURL.withQueries(query) else {
            
            completion(nil)
            print("Unable to build URL.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let data = data,
                let rawJSON = try? JSONSerialization.jsonObject(with: data){//},
             
                var pastaArray = rawJSON["recipies"] as? [[String: Any]] {
                
                let pastas = pastaArray.compactMap { Pasta(json: $0) }
               // let pastas = Pasta(json: rawJSON)

        //        completion(pastas)
                completion(nil)
                
            } else {
                print("Either no data was returned, or data was not serialized.")
                completion(nil)
                return
            }
        }
        task.resume()
    }
}

