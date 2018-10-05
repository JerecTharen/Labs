//
//  InfoViewController.swift
//  tab bars t1
//
//  Created by Tyler Donohue on 10/5/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet private var infoLabel: UILabel!
    
    func setInfo(with info: String) {
        self.loadViewIfNeeded()
        self.infoLabel.text = info
    }
}
