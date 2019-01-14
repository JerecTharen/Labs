//
//  RepTableViewCell.swift
//  RepresentativeAPI
//
//  Created by Tyler Donohue on 1/14/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit

class RepTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    func updateCell(rep: Representative) {
        nameLabel.text = rep.name
        adressLabel.text =  rep.adress
        phoneNumberLabel.text = rep.phoneNumber
    }

}
