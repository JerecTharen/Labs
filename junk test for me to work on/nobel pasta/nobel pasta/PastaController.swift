//
//  PastaController.swift
//  nobel pasta
//
//  Created by Tyler Donohue on 12/17/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation


class PastaController {
    static let baseURL = "https://www.food2fork.com/api/search?key=f3230e9056a3fab88f83ce336204b9bf&q=chicken%20breast&page=2"
    
    static func getPasta(searchTerm: String, completion: @escaping (Pasta?) -> Void) {
        let searchURL = baseURL + searchTerm.lowercased()
        _ = NetworkController.fetchPasta(urlString: searchURL, completion: { (pasta) in
            completion(pasta)
        })
    }
}
