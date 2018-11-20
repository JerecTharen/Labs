//
//  Game2TableViewController.swift
//  score keeper game
//
//  Created by Tyler Donohue on 11/14/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class Game2TableViewController: UITableViewController {

    @IBOutlet weak var addPlayerOutlet: UIBarButtonItem!
    
    
    struct pKeys {
        static let personCell = "personCell"
        static let addPersonSegue = "addPerson"
        static let editPerson = "editPerson"
    }
    
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameTableViewController", for: indexPath)
        
        let person = self.persons[indexPath.row]
        cell.textLabel?.text = person.name
        cell.detailTextLabel?.text = String(person.score)

        return cell
    }
    
    //mark
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        guard let source = segue.source as? GameTableViewController,
        let person = source.person else {return}
        
        if let indexPath = tableView.indexPathForSelectedRow {
            persons.remove(at: indexPath.row)
            persons.insert(person, at: indexPath.row)
            tableView.deselectRow(at: indexPath, animated: true)
        } else {
            persons.append(person)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let gameTableViewController = segue.destination as? GameTableViewController else {return}
        
        if let indexPath = tableView.indexPathForSelectedRow,
            segue.identifier == pKeys.addPersonSegue {
            gameTableViewController.person = persons[indexPath.row]
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            persons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}
