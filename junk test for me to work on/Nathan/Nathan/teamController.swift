//
//  teamController.swift
//  Nathan
//
//  Created by Tyler Donohue on 1/11/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

class TeamController {
    static let sharedController = TeamController()
    
    //manage teams
    var team: [Team] {
        //get reams from core data
        let request: NSFetchRequest<Team> = Team.fetchRequest()
        
        do {
            return try Stack.context.fetch(request)
        } catch {
            return []
        }
    }
    
    //create teams
    func createTeam(name: String, player: String, goals: Double) {
        let _ = Team(name: name, favPlayer: player, numberOfGoals: goals)
        save()
    }
    
    // delete teams
    func delete(team: Team) {
        Stack.context.delete(team)
        save()
    }
    
    //save
    func save() {
        do {
            try Stack.context.save()
        } catch {
            print("couldn't save this Team to core Data FelsBadMan.")
        }
    }
    
}


