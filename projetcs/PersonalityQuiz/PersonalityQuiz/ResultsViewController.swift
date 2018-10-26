//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Tyler Donohue on 10/23/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefenitionLabel: UILabel!
    
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResult() {
        var frequenceOfAnswers: [AnimalType: Int] = [:]
        
        let responseType = responses.map { $0.type }
        
        for response in responseType {
            frequenceOfAnswers[response] = (frequenceOfAnswers[response] ?? 0) + 1
        }
        
        let frequentAnswersSorted = frequenceOfAnswers.sorted { (pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        }
    
        let mostCommonAnswer = frequenceOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)"
        resultDefenitionLabel.text = mostCommonAnswer.definition
    }
    
}
