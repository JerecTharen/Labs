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
        Meal(name: "breakfast", food: [Food(name: "pancakes", description: "round"), Food(name: "syrup", description: "maple")]),
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
        
        let meal = meals[indexPath.section]
        let food = meals[indexPath.row]
        
        var allFoodInMeal: String = ""
        var allDescription: String = ""
        for food in meal.food {
            if meal.food[0].name == food.name {
                allFoodInMeal = food.name
                allDescription = food.description
            }
            else {
                allFoodInMeal = "\(allFoodInMeal), \(food.name)"
                allDescription = "\(allDescription), \(food.description)"
            }
        }
        
        cell.textLabel?.text = "\(meal.name) - \(allFoodInMeal)"
        cell.detailTextLabel?.text = allDescription
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return meals[section].name
    }

}
