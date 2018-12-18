//
//  RandomizerTableViewController.swift
//  API Project coz of ALan
//
//  Created by Tyler Donohue on 12/12/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class RandomizerTableViewController: UITableViewController, UISearchBarDelegate {
    
    var user : User? {
        didSet {
            DispatchQueue.main.sync {
                update(user)
            }
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moreInfoButton: UIButton!
    
    // methods
    
    private func resetForm() {
        DispatchQueue.main.sync {
            imageView.image = nil
            nameLabel.text = ""
        }
    }
    
    
    private func update(_ user: User?) {
        if let user = user {
            nameLabel.text = user.name
            
            if let imageURLString = user.imageURLString {
                NetworkController.fetchUser(urlString: imageURLString) { (data) in
                    if let data = data {
                        let image = UIImage(data: data)
                        
                        DispatchQueue.main.sync {
                            self.imageView.image = image
                        }
                    }
                }
            }
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
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
    @IBAction func moreInfoTapped(_ sender: Any) {
    }
    
}

extension RandomizerTableViewController {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchTerm = searchBar.text else {
            print(":(")
            return
        }
        
        RandomizerController.getUser(searchTerm: searchTerm) { (user) in
            guard let user = user else {
                self.resetForm()
                
                DispatchQueue.main.sync {
                    let alertController = UIAlertController(title: "Not Found", message: "more minerals required", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    
                    self.present(alertController, animated: true, completion: nil)
                }
                
                return
            }
            
            self.user = user
        }
    }
}
