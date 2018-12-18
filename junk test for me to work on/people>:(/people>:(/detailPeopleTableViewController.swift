//
//  detailPeopleTableViewController.swift
//  people>:(
//
//  Created by Tyler Donohue on 12/18/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class detailPeopleTableViewController: UITableViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    
  
    var nameString:String!
    var dobString:String!
    var imageString:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func updateUI() {
        self.nameLabel.text = nameString
        self.dobLabel.text = dobString
        
        let imgURL = URL(string:imageString)
        
        let data = NSData(contentsOf: (imgURL)!)
        self.imageView.image = UIImage(data: data! as Data)
    }
}
