//
//  WhispersViewController.swift
//  Dark Whispers
//
//  Created by Tyler Donohue on 10/11/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit
import AVFoundation



class WhispersViewController: UIViewController {
    @IBOutlet weak var RandomOldGod: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getT1()
       
        var soundTimer: Timer!
        soundTimer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(getT1), userInfo: nil, repeats: true)
        
        
                // Do any additional setup after loading the view.
    }
    
    @objc
    func getT1() {
        var randomGod = arc4random_uniform(5)
        switch randomGod {
        case 0:
            RandomOldGod.image = UIImage(named: "Cthun")
        case 1:
            RandomOldGod.image = UIImage(named: "Yoggsaron")
        case 2:
            RandomOldGod.image = UIImage(named: "Yshaarj")
        case 3:
            RandomOldGod.image = UIImage(named: "Nzoth")
        case 4:
            RandomOldGod.image = UIImage(named: "OldGodTree")
        default:
            RandomOldGod.image = UIImage(named: "OldGodHeart")
            
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
