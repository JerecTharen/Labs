//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by Tyler Donohue on 10/15/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class IntroducrionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func startQuizPressed(_ sender: Any) {
        performSegue(withIdentifier: "startQuiz", sender: nil)
    }
    
    @IBAction func unwindToQuizIntroduction(segue: UIStoryboardSegue) {
        
    }

}

