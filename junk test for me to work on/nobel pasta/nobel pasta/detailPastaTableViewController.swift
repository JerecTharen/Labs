//
//  detailPastaTableViewController.swift
//  nobel pasta
//
//  Created by Tyler Donohue on 12/17/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class detailPastaTableViewController: UITableViewController, UISearchBarDelegate {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var filterSegmentedControl: UISegmentedControl!
    
    var pasta: [Pasta?] = [] {
        didSet {
            DispatchQueue.main.sync {
                
            }
        }
    }
    
    
    private func resetForm() {
        searchBar.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }
    
    // MARK: - Table view data source
    
    func configure(cell: UITableViewCell, forItemAt indexPath: IndexPath) {
        
        let pastaItem = pasta[indexPath.row]
        
        cell.textLabel?.text = pastaItem?.title
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pasta.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        configure(cell: cell, forItemAt: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension detailPastaTableViewController {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchPasta = searchBar.text else {
            print(">:(")
            return
        }
        
        var pastaDic = ["key": "f3230e9056a3fab88f83ce336204b9bf", "q": searchPasta]
        PastaController.getPasta(matching: pastaDic) { (pasta) in
            guard let pasta = pasta else {
                self.resetForm()
                
                DispatchQueue.main.sync {
                    let alertController = UIAlertController(title: "not found", message: "oopsy whoopsy, we could not find your pasta", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "OKAY", style: .default, handler: nil))
                    self.present(alertController, animated: true, completion: nil)
                }
                
                return
            }
            self.pasta = pasta
        }
    }
}

