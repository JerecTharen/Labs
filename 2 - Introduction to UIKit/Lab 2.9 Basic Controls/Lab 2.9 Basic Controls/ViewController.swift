//
//  ViewController.swift
//  Lab 2.9 Basic Controls
//
//  Created by Tyler Donohue on 9/20/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coolTextField: UITextField!
    
    @IBOutlet weak var coolButton: UIButton!
    @IBOutlet weak var coolLabel: UILabel!
    @IBOutlet weak var coolSwitch: UISwitch!
    @IBOutlet weak var coolSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func clearButtonTapped(_ sender: Any) {
        coolTextField.text = ""
        coolLabel.text = ":^D"
    }
    
    @IBAction func coolSliderValueChanged(_ sender: UISlider, far: UISlider) {
        print("Slider BAM \(coolSlider.value)")
    }
    
    @IBAction func savedButtonTapped(_ sender: UIButton) {
        let text = coolTextField.text
        coolLabel.text = text
    }
    
    @IBAction func coolSwitchToggled(_ sender: UISwitch) {
        print("you did it \(coolSwitch.isOn)")
    }
}

