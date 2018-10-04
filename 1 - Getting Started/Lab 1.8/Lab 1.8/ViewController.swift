//
//  ViewController.swift
//  Lab 1.8
//
//  Created by Tyler Donohue on 9/3/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.init(red: 250/255, green: 128/255, blue: 144/255, alpha: 1)
                
    }

    
    @IBAction func UIButton(_ sender: UIButton) {
        Label.text = "FOOOOOOOOOL!"
    }
    
    @IBOutlet weak var Label: UILabel!
    
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    

  
    
    
    
    
    
    
    
    
}

