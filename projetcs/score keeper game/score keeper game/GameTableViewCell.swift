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
    //outlets go here from
    
    var person: Person?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func updatePerson(with person: Person) {
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
}
