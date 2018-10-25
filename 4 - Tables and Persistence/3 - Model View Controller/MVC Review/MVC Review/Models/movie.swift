//
//  movie.swift
//  MVC Review
//
//  Created by Tyler Donohue on 10/25/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation

struct Movie {
    var name: String
    var genre: String
    var rating: Int
    
    var descritopn: String {
        return "\(name) in the \(genre) is rated \(rating) and is one fo my favorites."
    }
}
