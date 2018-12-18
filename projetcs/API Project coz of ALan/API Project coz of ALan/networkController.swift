//
//  networkController.swift
//  API Project coz of ALan
//
//  Created by Tyler Donohue on 12/12/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation

class NetworkController {
    
    //methods
    
    static func fetchUser(urlString: String, completion: @escaping (User?) -> Void) {
        guard let url = URL(string: urlString) else {
            print("Error: Could not access Random Human.")
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
                    let user = try jsonDecoder.decode(User.self, from: data)
                    completion(user)
                    
                } catch(let error) {
                    print("Error: \(error)")
                    completion(nil)
                }
            }
        }
        
        dataTask.resume()
    }
    
    static func fetchUserImage(urlString: String, completion: @escaping (Data?) -> Void) {
        guard let url = URL(string: urlString) else {
            print("Error: Could not access the Pokemon image URL.")
            completion(nil)
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            completion(data)
        }
        
        dataTask.resume()
    }
}
