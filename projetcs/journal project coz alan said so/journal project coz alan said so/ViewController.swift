//
//  ViewController.swift
//  journal project coz alan said so
//
//  Created by Tyler Donohue on 11/2/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    struct PropertyKeys {
        static let journalCell = "JournalCell"
        static let addBookSegue = "AddEntry"
        static let editBookSegue = "EditEntry"
    }
    
    var journals: [Journal] = []
    
    var bookArchiveURL: URL {
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return documentsURL.appendingPathComponent("journals")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    // mark - table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.journalCell, for: indexPath)
        
        let journal = journals[indexPath.row]
        cell.textLabel?.text = journal.date
        cell.detailTextLabel?.text = journal.description
        
        return cell
    }
    
    // mark - navigation
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        guard let source = segue.source as? JournalTableViewController,
            let journal = source.journal else {return}
        
        if let indexPath = tableView.indexPathForSelectedRow {
            journals.remove(at: indexPath.row)
            journals.insert(journal, at: indexPath.row)
            tableView.deselectRow(at: indexPath, animated: true)
        } else {
            journals.append(journal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bookFormViewController = segue.destination as? JournalTableViewController else {return}
        
        if let indexPath = tableView.indexPathForSelectedRow,
            segue.identifier == PropertyKeys.editBookSegue {
            JournalTableViewController.journal = journals[indexPath.row]
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            journals.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
