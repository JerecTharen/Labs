//
//  TableViewCell.swift
//  RemeberLost
//
//  Created by Tyler Donohue on 1/8/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var editButton: UIButton!
    
    var entities: [Entity] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    
    
    @IBAction func editButtonTapped(_ sender: Any) {
     
        
    }
    
}

