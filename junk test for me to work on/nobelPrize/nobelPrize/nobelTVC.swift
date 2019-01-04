//
//  nobelTVC.swift
//  nobelPrize
//
//  Created by Tyler Donohue on 1/3/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit


import UIKit

protocol newTypeDelegate {
    func newTypeSet(with title: String, placeHolderText: String)
}

class FilterTableViewController: UITableViewController {
    @IBOutlet weak var nobelWinnerButton: UIButton!
    
    var delegate: newTypeDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func FilterButtonTapped(_ sender: UIButton) {
        switch sender {
        case nobelWinnerButton:
            NobelModelController.currentType = .nobelWinner
            delegate?.newTypeSet(with: "Nobel winners", placeHolderText: "Year")
        default:
            break
        }
        updateUI()
    }
    
    func updateUI() {
        switch NobelModelController.currentType {
        case .nobelWinner:
            nobelWinnerButton.isSelected = true
            break
        }
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
