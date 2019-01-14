//
//  SearchRepTableViewController.swift
//  RepresentativeAPI
//
//  Created by Tyler Donohue on 1/14/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit

class SearchRepTableViewController: UITableViewController, UISearchBarDelegate {
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
    }
    
    var representatives: [Representative] = []
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchText = searchBar.text else { return }
        RepresentativeController.sharedController.searchForReps(zipcode: searchText){ (reps) in
            DispatchQueue.main.sync {
                if let reps = reps {
                    self.representatives = reps
                }
                self.tableView.reloadData()
            }
            
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return representatives.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepCell", for: indexPath)
        
        
        
        return cell
    }
 
}
