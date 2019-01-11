//
//  DetailCoolTableViewController.swift
//  CoolAs
//
//  Created by Tyler Donohue on 1/9/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit
import CoreData

class DetailCoolTableViewController: UITableViewController {
    @IBOutlet weak var save: UIBarButtonItem!
    @IBOutlet weak var cancel: UIBarButtonItem!
    @IBOutlet weak var humanOutlet: UITextField!
    @IBOutlet weak var sauceOutlet: UITextField!
    
    
    var entities: [Entity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<Entity> = Entity.fetchRequest()
        
        do {
            entities = try managedContext.fetch(fetchRequest)
            self.tableView.reloadData()
        } catch {}
        

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
 
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }

    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "addHumans", for: indexPath)
//
//        return cell
//    }
    @IBAction func cancelTapped(_ sender: Any) {
        
    }
    @IBAction func saveTapped(_ sender: Any) {
        let newHuman = humanOutlet.text ?? ""
        let newSauce = sauceOutlet.text ?? ""
        
        if let tasteyHuman = Entity(human: "bob") {
            
            
        }
        
        
        
//        let category = Entity(human: humanOutlet.text ?? "")
//        let category2 = Entity2(sauce: sauceOutlet.text ?? "")
//
//        do {
//            try category?.managedObjectContext?.save()
//
//            self.navigationController?.popViewController(animated: true)
//        } catch {
//            print("could not save")
//        }
    }
    

}
