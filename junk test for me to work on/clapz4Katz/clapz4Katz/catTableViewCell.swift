//
//  catTableViewCell.swift
//  clapz4Katz
//
//  Created by Tyler Donohue on 12/18/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class catTableViewCell: UITableViewCell {
    @IBOutlet weak var catagoryLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var catImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
