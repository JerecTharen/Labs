//
//  GameTableViewCell.swift
//  score keeper game
//
//  Created by Tyler Donohue on 11/14/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class GameTableViewCell: UITableViewCell {
    
    //properties
    @IBOutlet weak var enterPlayerNameTextView: UITextView!
    @IBOutlet weak var playerScore: UILabel!
    
    var person: Person? {
        didSet {
            update()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func update() {
        if let person = person {
            enterPlayerNameTextView.text = person.name
            playerScore.text = String(person.score)
        }
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
}
