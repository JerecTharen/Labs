//
//  ViewController.swift
//  Lab 4.2 AppEventCount
//
//  Created by Tyler Donohue on 10/23/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var didFinishLaunching: UILabel!
    var didLaunch = 0
    @IBOutlet weak var willResignActive: UILabel!
    var willResign = 0
    @IBOutlet weak var didEnterBackground: UILabel!
    var didEnter = 0
    @IBOutlet weak var willEnterForeground: UILabel!
    var willEnter = 0
    @IBOutlet weak var didBecomeActive: UILabel!
    var didBecome = 0
    @IBOutlet weak var willTerminate: UILabel!
    var terminate = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        func updateView() {
            didFinishLaunching.text = "Did Launched \(didLaunch) time(s)"
            willResignActive.text = "Did Resign Active \(willResign) time(s)"
            didEnterBackground.text = "Did Launched \(didEnter) time(s)"
            willEnterForeground.text = "Did Launched \(willEnter) time(s)"
            didBecomeActive.text = "Did Launched \(didBecome) time(s)"
            willTerminate.text = "Did Launched \(terminate) time(s)"
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

