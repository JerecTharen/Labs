//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Tyler Donohue on 10/30/18.
//

import UIKit

//outlets
class BookFormTableViewController: UITableViewController {
    @IBOutlet weak var titleTextFieldOutlet: UITextField!
    @IBOutlet weak var authorTextFieldOutlet: UITextField!
    @IBOutlet weak var genreTextFieldOutlet: UITextField!
    @IBOutlet weak var lengthTextFieldOutlet: UITextField!
    
    struct PropertyKeys {
        static let unwind = "UnwindToBookTable"
    }
    
    var book: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()

    }
    
    // func
    func updateView() {
        guard let book = book else {return}
        
        titleTextFieldOutlet.text = book.title
        authorTextFieldOutlet.text = book.author
        genreTextFieldOutlet.text = book.genre
        lengthTextFieldOutlet.text = book.length
    }

// actions
    @IBAction func saveButton(_ sender: Any) {
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = titleTextFieldOutlet.text,
            let author = authorTextFieldOutlet.text,
            let genre = genreTextFieldOutlet.text,
            let length = lengthTextFieldOutlet.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
    }
    
}
