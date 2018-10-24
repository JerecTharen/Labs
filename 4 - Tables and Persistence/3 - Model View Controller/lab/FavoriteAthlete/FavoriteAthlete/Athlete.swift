//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Tyler Donohue on 10/24/18.
//

import Foundation

struct Athlete {
    var name: String
    var age: Int
    var team: String
    var league: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
    }
}
