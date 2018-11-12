//
//  FoodTableViewController.swift
//  Lab 4.5 tableViews
//
//  Created by Tyler Donohue on 10/29/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] = [
        Meal(name: "breakfast", food: [Food(name: "pancakes", description: "round")]),
        Meal(name: "lunch", food: [Food(name: "bread", description: "starch")]),
        Meal(name: "dinner", food: [Food(name: "soup", description: "liquid")])
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return meals[section].food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        
        let meal = meals[IndexPath.section]
        let food = meals[IndexPath.row]
        
        cell.textLabel?.text = "\(meal.name) - \(meal.food)"
        cell.detailTextLabel?.text = food.description
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        <#code#>
    }

}
