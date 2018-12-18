//
//  detailPastaTableViewController.swift
//  nobel pasta
//
//  Created by Tyler Donohue on 12/17/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class detailPastaTableViewController: UITableViewController, UISearchBarDelegate {
    
      var pasta: [Pasta?] = [] {
        didSet {
            DispatchQueue.main.sync {
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pasta.count
    }

}
