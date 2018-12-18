//
//  peopleTableViewCell.swift
//  people>:(
//
//  Created by Tyler Donohue on 12/18/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class peopleTableViewCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
