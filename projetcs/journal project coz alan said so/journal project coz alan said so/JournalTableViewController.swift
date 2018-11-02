//
//  JournalTableViewController.swift
//  journal project coz alan said so
//
//  Created by Tyler Donohue on 11/2/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class JournalTableViewController: UITableViewController {

    //outlets
    @IBOutlet weak var journalDateTitleOutlet: UITextField!
    @IBOutlet weak var journalTextViewOutlet: UITextView!
    
    struct PropertyKeys {
        static let unwind = "unwindToStart"
    }
    
    var journal: Journal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        
    }
    
    // func
        func updateView() {
            guard let journal = journal else {return}
            
            journalDateTitleOutlet.text = journal.date
            journalTextViewOutlet.text = journal.entry
        }
        
        // actions
        
        @IBAction func saveButtonTapped(_ sender: Any) {
            guard let date = journalDateTitleOutlet.text,
                let entry = journalTextViewOutlet.text, else {return}
            
            journal = Journal(date: date, entry: entry)
            performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
        }
}
