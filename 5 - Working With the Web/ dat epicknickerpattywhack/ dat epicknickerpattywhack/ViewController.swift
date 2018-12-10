//
//  ViewController.swift
//   dat epicknickerpattywhack
//
//  Created by Tyler Donohue on 12/4/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var textField: UITextField!
    
    
    let query: [String: String] = [
        "zip": "84043,us",
        "appid": "628a9b75830bdb44b8d156a663bf98be"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
 
    
    @IBAction func datePickerButton(_ sender: Any) {
    }
    
    
}

