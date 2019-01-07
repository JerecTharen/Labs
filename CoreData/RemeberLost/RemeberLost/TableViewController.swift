//
//  TableViewController.swift
//  RemeberLost
//
//  Created by Tyler Donohue on 1/7/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {
    
    var entity: [Entity] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = entity[indexPath.row].name
        cell.detailTextLabel?.text = ""
        
        return cell
    }
    
    @IBAction func onPlusTapped() {
        let alert = UIAlertController(title: "add", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Name"
        }
        let action = UIAlertAction(title: "post", style: .default) { (_) in
            let name = alert.textFields!.first!.text!
            print(name)
            let onject = Entity(context: PersistanceService.context)
            onject.name = name
            PersistanceService.saveContext()
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
       
    }

}
