//
//  RepViewController.swift
//  RepresentativeAPI
//
//  Created by Tyler Donohue on 1/14/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit

class RepViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var adress: UILabel!
    @IBOutlet weak var searchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        updateView()
    }
    

    var representaive: Representative? {
        return RepresentativeController.sharedController.representatives.first
    }
    
    func updateView() {
        if let rep = representaive {
            name.text = rep.name
            adress.text = rep.adress
            phoneNumber.text = rep.phoneNumber
        } else {
            name.text = "Search for Rep"
            adress.text = "Search for Adress"
            phoneNumber.text = "Search for Phone Number"
            
        }
    }
}
