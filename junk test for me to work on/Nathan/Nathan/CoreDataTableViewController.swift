//
//  CoreDataTableViewController.swift
//  Nathan
//
//  Created by Tyler Donohue on 1/11/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit

class CoreDataTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //viewdid load exists in memory
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        //view will appear it exists now
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TeamController.sharedController.team.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath)
        
        //get the team associated with this cell
        let team = TeamController.sharedController.team[indexPath.row]
        
        //configure cell
        cell.textLabel?.text = team.name
        
        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let team = TeamController.sharedController.team[indexPath.row]
        if editingStyle == .delete {
            // Delete the row from the data source
            TeamController.sharedController.delete(team: team)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailView" {
            //get the detailVC
            guard let  detailVC = segue.destination as? DetailCoreDataTableViewController,
                let selectedRow = tableView.indexPathForSelectedRow?.row else { return }
            
            // we have more data
            let team = TeamController.sharedController.team[selectedRow]
            
            //give it stuff
            detailVC.team = team
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
