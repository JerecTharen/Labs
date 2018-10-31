//
//  DetailTableViewController.swift
//  intTableViews with ryan
//
//  Created by Tyler Donohue on 10/31/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var bioTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bio = bio {
            nameTextField.text = bio.name
            bioTextView.text = bio.bio
        }

    }
    
    var bio: Bio?
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        bio = Bio(name: nameTextField.text ?? "", bio: bioTextView.text)
        performSegue(withIdentifier: "unwindToStoryboard", sender: nil)
    }
}
