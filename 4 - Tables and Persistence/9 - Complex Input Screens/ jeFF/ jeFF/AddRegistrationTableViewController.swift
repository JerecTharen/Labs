//
//  AddRegistrationTableViewController.swift
//   jeFF
//
//  Created by Tyler Donohue on 11/8/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class AddRegistrationTableViewController: UITableViewController {
    
    //mark Properties
    
    // Outlets
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var checkInDateLabel: UILabel!
    @IBOutlet weak var checkInDatePicker: UIDatePicker!
    @IBOutlet weak var checkOutdateLabel: UILabel!
    @IBOutlet weak var checkOutDatePicker: UIDatePicker!
    
    // mark View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
let midnightToday = Calendar.current.startOfDay(for: Date())
        checkInDatePicker.minimumDate = midnightToday
        checkInDatePicker.date = midnightToday
        
        updateDateViews()
    
    }
    
    func updateDateViews() {
        checkOutDatePicker.minimumDate = checkInDatePicker.date.addingTimeInterval(86400)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        checkInDateLabel.text = dateFormatter.string(from: checkInDatePicker.date)
        checkOutdateLabel.text = dateFormatter.string(from: checkOutDatePicker.date)
        
        
    }
    
    // actions
    
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        updateDateViews()
    }
    
    @IBAction func doneBarButonTapped(_ sender :UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
        let checkInDate = checkInDatePicker.date
        let checkOutDate = checkOutDatePicker.date
        
        print("DONE button tapped")
        print("firstName: \(firstName)")
        print("lastName: \(lastName)")
        print("email: \(email)")
        
        print("checkIn: \(checkInDate)")
        print("checkOut: \(checkOutDate)")
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
