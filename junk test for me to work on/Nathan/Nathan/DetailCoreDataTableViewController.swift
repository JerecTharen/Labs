//
//  DetailCoreDataTableViewController.swift
//  Nathan
//
//  Created by Tyler Donohue on 1/11/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit

class DetailCoreDataTableViewController: UITableViewController {
    @IBOutlet weak var nameOfTeam: UITextField!
    @IBOutlet weak var FavPlayer: UITextField!
    @IBOutlet weak var goalsScored: UITextField!
    @IBOutlet weak var save: UIStackView!
    
    var team: Team? {
        didSet {
            guard let team = team else { return }
                
                nameOfTeam.text = team.name
                FavPlayer.text = team.favPlayer
                goalsScored.text = "\(team.goalsScored)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func saveTapped(_ sender: Any) {
        guard let name = nameOfTeam.text,
            let player = FavPlayer.text,
            let goals = goalsScored.text,
            let goalsDouble = Double(goals) else {return}
        
        if let team = team {
            //update
            team.name = name
            team.favPlayer = player
            team.goalsScored = goalsDouble
            TeamController.sharedController.save()
        } else {
            //update
            TeamController.sharedController.createTeam(name: name, player: player, goals: goalsDouble)
        }
        self.navigationController?.popViewController(animated: true)
        print("saveTapped")
    }
    
    
    
}
