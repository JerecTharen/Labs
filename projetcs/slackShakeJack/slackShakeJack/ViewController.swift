//
//  ViewController.swift
//  slackShakeJack
//
//  Created by Tyler Donohue on 1/15/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit
import CoreData
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var randomCard: UIImageView!
    @IBOutlet weak var pause: UIButton!
    @IBOutlet weak var numberOfCards: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var reShuffle: UIButton!
    
    var timer = Timer()
    var resumeTapped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardButton.layer.cornerRadius = 5
        cardButton.layer.masksToBounds = true
        
        CardController.sharedController.setDeck()
        
    }
    
    @objc private func displayNewCard() {
        CardController.sharedController.drawCard()
        guard let imageURL = URL(string: (CardController.sharedController.getDeck().cards?.allObjects.last as! Card).imageURL) else { return }
        let task = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            guard let data = data, let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                self.randomCard.image = image
            }
        }
        task.resume()
    }
    
    private func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(displayNewCard), userInfo: nil, repeats: true)
    }
    
    // mark Actions
    @IBAction func pauseTapped(_ sender: Any) {
        guard let play = UIImage(named: "play"),
            let pause = UIImage(named: "pause"),
            let pauseFilled = UIImage(named: "pauseFilled"),
            let playFilled = UIImage(named: "playFilled") else { return }
        if self.resumeTapped == false {
            timer.invalidate()
            self.resumeTapped = true
            self.pause.imageView?.image = play
        } else {
            runTimer()
            self.resumeTapped = false
            self.pause.imageView?.image = pause
        }
    }
    @IBAction func cardButtonTapped(_ sender: Any) {
        //sender.isEnabled = false
        CardController.sharedController.drawCard(completion: <#((Card?) -> Void)#>)
        displayNewCard()
        score.text = "Score: 0"
        numberOfCards.text = "Cards: 52"
        UIView.animate(withDuration: 1.0) {
            self.cardButton.alpha = 0.0
        }
        UIView.animate(withDuration: 2.0) {
            self.randomCard.alpha = 1.0
            self.numberOfCards.alpha = 1.0
            self.score.alpha = 1.0
            self.pause.alpha = 1.0
        }
        runTimer()
    }
    
    @IBAction func reShuffleTapped(_ sender: Any) {
    }
    
}

