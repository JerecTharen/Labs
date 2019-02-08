//
//  MonthView.swift
//  MaxMeyer'sFavPasta
//
//  Created by Tyler Donohue on 1/30/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit

protocol MonthViewDelegate: class {
    func didChangeMonth(monthIndex: Int, year: Int)
}

class MonthView: UIView {
    var monthArr = ["January", "Febuary", "March", "April", "June", "July", "August", "September", "November", "December"]
    var currentMonthIndex = 0
    var currentYear: Int = 0
    var delegate: MonthViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        
        currentMonthIndex = Calendar.current.component(.month, from: Date()) - 1
        currentYear = Calendar.current.component(.year, from: Date())
        
        btnLeft.isEnabled = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func btnLeftRightAction(sender: UIButton) {
        if sender == btnRight {
            currentMonthIndex += 1
            if currentMonthIndex > 11 {
                currentMonthIndex = 0
                currentYear += 1
            }
        } else {
            currentMonthIndex -= 1
            if currentMonthIndex < 0 {
                currentMonthIndex = 11
                currentYear -= 1
            }
        }
      
    }
    
}
