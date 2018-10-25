//
//  FavoriteMovieTableViewController.swift
//  MVC Review
//
//  Created by Tyler Donohue on 10/25/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class FavoriteMovieTableViewController: UITableViewController {
    
    // Properties
    
     var movies = [Movie]()
    
    // view life cycle

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let movie = movies[indexPath.row]
        
        cell.textLabel?.text = movie.name
        cell.detailTextLabel?.text = movie.descritopn

        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let movieDetailViewController = segue.destination as? MovieDetailViewController else { return }
    }
    @IBAction func prepareFoundation(segue: UIStoryboardSegue) {
        
    }

}
