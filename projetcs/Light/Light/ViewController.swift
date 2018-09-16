//
//  ViewController.swift
//  Light
//
//  Created by Tyler Donohue on 9/11/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
  
    
     var lightOn = true
    
    @IBOutlet weak var lightButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
       lightOn = !lightOn
        updateUI()
    }
    func updateUI()  {
        

            view.backgroundColor = lightOn ? .white : .black
        
    }
        
    
 //
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

