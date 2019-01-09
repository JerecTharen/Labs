//
//  CoolTableViewController.swift
//  CoolAs
//
//  Created by Tyler Donohue on 1/9/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit

class CoolTableViewController: UITableViewController {
    @IBOutlet weak var add: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        return cell
        
    }
    @IBAction func addTapped(_ sender: Any) {
        
    }
    

}
