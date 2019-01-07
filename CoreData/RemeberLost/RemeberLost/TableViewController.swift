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

    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Entity", in: context)
        
        
        do {
            try context.save()
        } catch {
            print("saving")
        }
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        request.returnsObjectsAsFaults = false

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

    

}
