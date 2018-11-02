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
            guard let book = book else {return}
            
            journalDateTitleOutlet.text = book.title
            journalTextViewOutlet.text = book.author
        }
        
        // actions
        
        @IBAction func saveButtonTapped(_ sender: Any) {
            guard let title = journalEntryOutlet.text,
                let author = journalTextViewOutlet.text, else {return}
            
            book = Book(title: title, author: author, genre: genre, length: length)
            performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
        }
        
}
