//
//  BioTableViewCell.swift
//  intTableViews with ryan
//
//  Created by Tyler Donohue on 10/31/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class BioTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    var bio: Bio? {
        didSet {
            guard let bio = bio else { return }
            updateCell(with: bio)
        }
    }
    
    func updateCell(with bio: Bio) {
        nameLabel.text = bio.name
        bioLabel.text = bio.bio
    }
  

}
