//
//  DetailTableViewController2.swift
//  RemeberLost
//
//  Created by Tyler Donohue on 1/7/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit

class DetailTableViewController2: UITableViewController {

    @IBOutlet weak var update: UIButton!
    @IBOutlet weak var textFieldUpdate: UITextField!
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
    @IBAction func updateTapped(_ sender: Any) {
    }
    
}
