//
//  ViewController.swift
//   bRYAN
//
//  Created by Tyler Donohue on 11/7/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func alertTapped(_ sender: Any) {
        // we're going to show an alert controller that will display a list of options to choose from
        let alerController = UIAlertController(title: "Waring!", message: "you have entered the DUNK zone", preferredStyle: .actionSheet)
        
        let cancel = UIAlertAction(title: "dont you run!!!", style: .cancel, handler: nil)
        
        alerController.addAction(cancel)
        
        let delete = UIAlertAction(title: "DESTROYED", style: .destructive) { _ in
            self.view.backgroundColor = .black
        }
        alerController.addAction(delete)
        
        present(alerController, animated: true) {
            print("that's it, im dead")
        }
        
    }
}

