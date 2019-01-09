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
        
        let fetchRequest: NSFetchRequest<Entity> = Entity.fetchRequest()
        
        do {
            let otherEntity = try PersistanceService.context.fetch(fetchRequest)
        self.entity = otherEntity
        self.tableView.reloadData()
        } catch {}

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
    
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return entity.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = entity[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let editButton = UITableViewRowAction(style: .normal, title: "Edit") { (rowAction, indexPath) in
            print("edit clicked \(indexPath.row)")
        }
       
        let onject = Entity(context: PersistanceService.context)
        PersistanceService.saveContext()
        self.entity.append(onject)
        self.tableView.reloadData()
        return [editButton]
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            self.entity.remove(at: indexPath.row)
            let onject = Entity(context: PersistanceService.context)
            PersistanceService.saveContext()
            self.entity.append(onject)
            self.tableView.reloadData()
            return
        }
     
    }
    
    @IBAction func onPlusTapped() {
        let alert = UIAlertController(title: "add", message: nil, preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Data"
        }
        let cancel = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        let action = UIAlertAction(title: "Add", style: .default) { (_) in
            let name = alert.textFields!.first!.text!
            print(name)
            let onject = Entity(context: PersistanceService.context)
            onject.name = name
            PersistanceService.saveContext()
            self.entity.append(onject)
            self.tableView.reloadData()
        }
        alert.addAction(action)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
       
    }
}
// future tyler make  save button u nib nard
