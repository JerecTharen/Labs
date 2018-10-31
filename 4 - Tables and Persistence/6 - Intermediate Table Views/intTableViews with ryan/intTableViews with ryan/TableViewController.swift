//
//  TableViewController.swift
//  intTableViews with ryan
//
//  Created by Tyler Donohue on 10/31/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var bios = [Bio]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bios.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "bioCell", for: indexPath) as? BioTableViewCell else { return UITableViewCell() }
        
        cell.bio = bios[indexPath.row]
        
        return cell
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        if let source = segue.source as? DetailTableViewController, let bio = source.bio {
            bios.append(bio)
            tableView.reloadData()
            
        }
    }
    
}
