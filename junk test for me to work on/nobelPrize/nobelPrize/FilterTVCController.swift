//
//  FilterTVCController.swift
//  nobelPrize
//
//  Created by Tyler Donohue on 1/3/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation

protocol newTypeDelegate {
    func newTypeSet(with title: String, placeHolderText: String)
}

class FilterTableViewController: UITableViewController {
    @IBOutlet weak var nobelWinnerButton: UIButton!
    
    var delegate: newTypeDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func FilterButtonTapped(_ sender: UIButton) {
        switch sender {
        case nobelWinnerButton:
            NobelModelController.currentType = .nobelWinner
            delegate?.newTypeSet(with: "Nobel Prize Winners", placeHolderText: "Year")
        default:
            break
        }
        updateUI()
    }
    
    func updateUI() {
        switch NobelModelController.currentType {
        case .nobelWinner:
            nobelWinnerButton.isSelected = true
        }
    }
}
