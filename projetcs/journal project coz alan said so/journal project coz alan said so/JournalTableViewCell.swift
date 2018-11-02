//
//  JournalTableViewCell.swift
//  journal project coz alan said so
//
//  Created by Tyler Donohue on 11/2/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class JournalTableViewCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var entryLabel: UILabel!
    
    var journal: Journal? {
        didSet {
            guard let journal = journal else {return}
            updateCell(with: journal)
        }
    }
    
    func updateCell(with journal: Journal) {
        dateLabel.text = journal.date
        entryLabel.text = journal.entry
    }
    
}
