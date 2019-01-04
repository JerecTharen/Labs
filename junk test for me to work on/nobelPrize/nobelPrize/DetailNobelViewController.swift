//
//  DetailNobelViewController.swift
//  nobelPrize
//
//  Created by Tyler Donohue on 1/3/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//


import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var nobelWinnerStackView: UIStackView!
    @IBOutlet weak var nobelWinnerFullNameLabel: UILabel!
    @IBOutlet weak var nobelWinnerYearLabel: UILabel!
    @IBOutlet weak var nobelWinnerMotivationLabel: UILabel!
    @IBOutlet weak var nobelWinnerMotivationTextView: UITextView!
    
    var currentItem: Any?
    var selectedItem: Laureate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch NobelModelController.currentType {
        case .nobelWinner:
            nobelWinnerCase()
        }

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        nobelWinnerStackView.isHidden = true
    }
    
    func nobelWinnerCase() {
        nobelWinnerStackView.isHidden = false
        guard let currentItem = currentItem as? NobelWinner else {return}
        navigationItem.title = "Nobel Prize Winners of " + currentItem.year
        
        nobelWinnerFullNameLabel.text = "Full Name: " + (selectedItem?.firstName ?? "") + " " + (selectedItem?.surName ?? "")
        nobelWinnerYearLabel.text = "Year: " + currentItem.year
        if selectedItem?.motivation == "" {
            nobelWinnerMotivationLabel.isHidden = true
        } else {
            nobelWinnerMotivationLabel.isHidden = false
        }
        nobelWinnerMotivationTextView.text = (selectedItem?.motivation ?? "")
    }
}
