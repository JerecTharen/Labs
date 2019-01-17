//
//  PersonTableViewController.swift
//  fetchedResulstExample
//
//  Created by Tyler Donohue on 1/15/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import UIKit
import CoreData
class PersonTableViewController: UITableViewController {

    var fetchedResultsController: NSFetchedResultsController<Person>!
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func initializeFetchedResultsController() {
        let request = NSFetchRequest<Person>(entityName: "Person")
        
        request.predicate = NSPredicate(format: "lastName == %@", "dumbedMe")
        
        //predicate show only that with last name of dumpedMe on the list.
        let birthdaySort = NSSortDescriptor(key: "birthday", ascending: true)
        let lastNameSort = NSSortDescriptor(key: "lastName", ascending: false)
        request.sortDescriptors = [lastNameSort, birthdaySort]
        //aceding is how the lsit is show from top to bottom. to decd the opposite make it false
        //the request.sortDesciptores will show the lost based on last anme alphabetized and the birthday
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        fetchedResultsController.delegate = self
        
        do {
            try fetchedResultsController.performFetch()
        } catch {
            fatalError("Failed to initialize FetchedResultsController: \(error)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeFetchedResultsController()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return fetchedResultsController.sections?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let sections = fetchedResultsController.sections else {
            fatalError("error in fetchReulstsController")
        }
        let sectionInfo = sections[section]
        return sectionInfo.numberOfObjects
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier") ?? UITableViewCell(style: .default, reuseIdentifier: "cellIdentifier")
        
        guard let object = self.fetchedResultsController?.object(at: indexPath) else {
            fatalError("more error")
        }
        cell.textLabel?.text = "\(object.firstName ?? "") \(object.lastName ?? "")"

        return cell
    }
}
    
    extension PersonTableViewController: NSFetchedResultsControllerDelegate {
        func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
            tableView.beginUpdates()
        }
        
        func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange sectionInfo: NSFetchedResultsSectionInfo, atSectionIndex sectionIndex: Int, for type: NSFetchedResultsChangeType) {
            switch type {
            case .insert:
                tableView.insertSections(IndexSet(integer: sectionIndex), with: .fade)
            case .delete:
                tableView.deleteSections(IndexSet(integer: sectionIndex), with: .fade)
            case .move:
                break
            case .update:
                break
            }
        }
        
        func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
            switch type {
            case .insert:
                tableView.insertRows(at: [newIndexPath!], with: .fade)
            case .delete:
                tableView.deleteRows(at: [indexPath!], with: .fade)
            case .update:
                tableView.reloadRows(at: [indexPath!], with: .fade)
            case .move:
                tableView.moveRow(at: indexPath!, to: newIndexPath!)
            }
        }
        
        func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
            tableView.endUpdates()
        }
}
