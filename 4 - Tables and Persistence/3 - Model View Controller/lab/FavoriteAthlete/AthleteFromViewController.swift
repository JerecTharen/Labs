//
//  AthleteFromViewController.swift
//  FavoriteAthlete
//
//  Created by Tyler Donohue on 10/24/18.
//

import UIKit
var athlete: Athlete?
class AthleteFromViewController: UIViewController {
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldAge: UITextField!
    @IBOutlet weak var textFieldLague: UITextField!
    @IBOutlet weak var textFieldTeam: UITextField!
    @IBAction func saveButton(_ sender: Any) {
        guard let name = textFieldName.text,
            let age = textFieldAge.text,
            let league = textFieldLague.text,
            let team = textFieldTeam.text else {return}
          
        athlete = Athlete(name: "Tim", age: 17, team: "TSM", league: "Bronze")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        func updateView()  {
            
            if let athlete = athlete {
                return Athlete
            } else {
                return nil
            }
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
