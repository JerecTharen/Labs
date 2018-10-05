//
//  TabBarViewController.swift
//  Lab 3.7 AboutMe
//
//  Created by Tyler Donohue on 10/5/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
let info = "REDACTED"
        for child in self.children where child is InfoViewController {
            (child as! InfoViewController).setInfo(with: info)
        }
            
        }
    }

