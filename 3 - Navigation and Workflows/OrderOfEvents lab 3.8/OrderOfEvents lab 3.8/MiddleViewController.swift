//
//  MiddleViewController.swift
//  OrderOfEvents lab 3.8
//
//  Created by Tyler Donohue on 10/10/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number \(eventNumber)was viewDidLoad"
            eventNumber += 1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number \(eventNumber)was viewDidLoad"
            eventNumber += 1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number \(eventNumber)was viewDidLoad"
            eventNumber += 1
        }
    }

    override func viewDidDisappear(_ animated: Bool) {
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number \(eventNumber)was viewDidLoad"
            eventNumber += 1
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


