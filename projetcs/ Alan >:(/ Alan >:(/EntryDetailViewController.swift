//
//  EntryDetailViewController.swift
//   Alan >:(
//
//  Created by Tyler Donohue on 11/2/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController {
    //outlets
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var textViewOutlet: UITextView!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let entry = entry {
            textFieldOutlet.text = entry.title
            textViewOutlet.text = entry.body
        }
    }
    
    //actions
    @IBAction func savedButtonTapped(_ sender: Any) {
        
        if let title = textFieldOutlet.text, let body = textViewOutlet.text {
            EntryController.sharedInstance.addEntry(title: title, body: body)
            self.navigationController?.popViewController(animated: true)
        } else {
        }
    }
}
