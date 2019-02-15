//
//  ViewController.swift
//  lab 5.3 contest
//
//  Created by Tyler Donohue on 11/28/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var robbyR: UIImageView!
    @IBOutlet weak var freeCorn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        robbyR.alpha = 0
        
        var cornTimer: Timer!
        cornTimer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(freeCornAdd), userInfo: nil, repeats: true)
        freeCornAdd()
        
    }
    
    var song: AVAudioPlayer?
    
    @objc
    func freeCornAdd() {
        UIView.animate(withDuration: 0.1) {
            self.freeCorn.backgroundColor = .red
            UIView.animate(withDuration: 0.2) {
                self.freeCorn.backgroundColor = .green
                
            }
        }
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        if textField.text == "" {
            print("not ok")
            UIView.animate(withDuration: 0.3, animations: {
                let move = CGAffineTransform(translationX: 10, y: 0)
                self.textField.transform = move
            }) { (_) in
                UIView.animate(withDuration: 0.3, animations: {
                    let moveBack = CGAffineTransform(translationX: -10, y: 0)
                    self.textField.transform = moveBack
                })
            }
        } else if textField.text == "Robby Rotten" {
            print("THROW IT ON HIM NOT ME")
            robbyR.alpha = 1
            UIView.animate(withDuration: 0.1, animations: {
                let move = CGAffineTransform(translationX: 15, y: 0)
                self.robbyR.transform = move
            }) { (_) in
                UIView.animate(withDuration: 0.1, animations: {
                    let moveBack = CGAffineTransform(translationX: -15, y: 0)
                    self.robbyR.transform = moveBack
                })
            }
            
            guard let url = Bundle.main.url(forResource: "pokemon", withExtension: "mp3") else {
                print("uh oh")
                return }
            
            //let url = URL(fileURLWithPath: path)
            
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: .defaultToSpeaker)
                try AVAudioSession.sharedInstance().setActive(true)
                song = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                song?.play()
            } catch {
                print("ERRR")
            }
        } else {
            print("ok")
            
            textField.backgroundColor = .yellow
            
            performSegue(withIdentifier: "segue", sender: nil)
        }
        print("OH HEY")
    }
    @IBAction func freeCornButtonTapped(_ sender: Any) {
        print("no corn :^)")
        freeCorn.setTitle("NO CORN FOR YOU!", for: .normal)
        
    }
}

