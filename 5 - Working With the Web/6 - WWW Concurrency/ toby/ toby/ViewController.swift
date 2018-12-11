//
//  ViewController.swift
//   toby
//
//  Created by Tyler Donohue on 12/11/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var sumButon: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sumButon.isHidden = true
        
        DispatchQueue.global().async {
            // fancey backgroudn stuff
            sleep(3)
            DispatchQueue.main.sync {
                sleep(2)
                self.sumLabel.text = "50%"
            }
            DispatchQueue.main.sync {
                sleep(5)
                self.sumLabel.text = "75%"
            }
            sleep(5)
            DispatchQueue.main.sync {
                self.sumLabel.text = "100%"
            }
            sleep(1)
            DispatchQueue.main.sync {
                self.sumButon.isHidden = false
            }
        }
    }
    @IBAction func buttonTapped(_ sender: Any) {
         UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=pAbV_9c9BVc")! as URL, options: [:], completionHandler: nil)
        
    }
}

