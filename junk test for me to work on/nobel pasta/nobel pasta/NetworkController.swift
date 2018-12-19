//
//  NetworkController.swift
//  nobel pasta
//
//  Created by Tyler Donohue on 12/17/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation

class NetworkController {
    
    static func fetchPasta(urlString: String, completion: @escaping (Pasta?) -> Void) {
        guard let url = URL(string: urlString) else {
            print("now i have become pasta, but I can't get what you are looking for")
            completion(nil)
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            
            if let error = error {
                print("Error: \(error)")
                completion(nil)
            }
            
            if let response = response as? HTTPURLResponse{
                print("Response: \(response)")
                print("Response status code: \(response.statusCode)")
                
                if response.statusCode != 200 {
                    completion(nil)
                }
            }
            
            if let data = data {
                do {
                    let pasta = try jsonDecoder.decode(Pasta.self, from: data)
                    completion(pasta)
                } catch(let error) {
                    print("ERROR: \(error)")
                    completion(nil)
                }
            }
        }
        
        dataTask.resume()
    }
    
    static func fetchPastaImage(urlString: String, completion: @escaping (Data?) -> Void) {
        guard let url = URL(string: urlString) else {
            print("ok this is so sad, but we can't get your pics :^(")
            completion(nil)
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            completion(data)
        }
        
        dataTask.resume()
    }
}
