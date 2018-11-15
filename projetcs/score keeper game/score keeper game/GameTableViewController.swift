//
//  GameTableViewController.swift
//  score keeper game
//
//  Created by Tyler Donohue on 11/14/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class GameTableViewController: UITableViewController {
    
    //outlets
    @IBOutlet weak var playerNameTextViewOutlet: UITextField!
    @IBOutlet weak var scoreStepperOutlet: UIStepper!
    @IBOutlet weak var scoreLabelOutlet: UILabel!
    
    struct Unwind {
        static let unwind = "UnwindToVC"
    }
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        
    }
    
    func updateView() {
        guard let person = person else {return}
        playerNameTextViewOutlet.text = person.name
        scoreLabelOutlet.text = String(person.score)
    }
    
    //actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = playerNameTextViewOutlet.text,
        let score = scoreLabelOutlet.text
            else {return}
        
        person = Person(name: name, score: 0)
        performSegue(withIdentifier: Unwind.unwind, sender: self)
    }
    @IBAction func stepperButtonTapped(_ sender: UIStepper) {
        scoreLabelOutlet.text = String(sender.value)
    }
    
    
    
    
    
}
