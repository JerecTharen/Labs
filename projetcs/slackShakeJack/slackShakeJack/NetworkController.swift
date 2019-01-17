//
//  NetworkController.swift
//  slackShakeJack
//
//  Created by Tyler Donohue on 1/17/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation

class NetworkController {
    
    static func performNetworkRequest(for url: URL, completion: ((Data?, Error?) -> Void)? = nil) {
        
        let request = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if let completion = completion {
                
                completion(data, error)
            }
        }
        
        dataTask.resume()
    }
}
