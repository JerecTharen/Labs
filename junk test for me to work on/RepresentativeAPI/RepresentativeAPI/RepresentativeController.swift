//
//  RepresentativeController.swift
//  RepresentativeAPI
//
//  Created by Tyler Donohue on 1/14/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation
import CoreData

class RepresentativeController {
    
    static let sharedController = RepresentativeController()
    let baseURL = "https://whoismyrepresentative.com/getall_mems.php?&output=json&zip="
    
    var representatives: [Representative] {
        
        let request: NSFetchRequest<Representative> = Representative.fetchRequest()
        
        do {
            return try Stack.context.fetch(request)
        } catch {
            
            return []
        }
    }
    
    func searchForReps(zipcode: String, completion: (([Representative]?) -> Void)? = nil) {
        guard let url = URL(string: baseURL + zipcode) else {
            print("bad zipcode")
            return
            
        }
        NetworkController.performNetworkRequest(for: url) { (data, error) in
            guard let data = data else { return }
            
            do {
                let jsonObjcet = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                if let dicionary = jsonObjcet as? Dictionary<String, [Dictionary<String, Any>]>,
                    let results = dicionary["results"] {
                    var reps: [Representative] = []
                    for rep in results {
                        if let representative = Representative(dicionary: rep) {
                            reps.append(representative)
                        }
                    }
                    if let completion = completion {
                        completion(reps)
                    }
                    
                }
            } catch  {
                print(error)
            }
        }
    }
        
        func deleteRep(rep: Representative) {
            Stack.context.delete(rep)
            saveToPersistanceStorage()
        }
        func saveRep(rep: Representative) {
            guard let name = rep.name,
                let phoneNumber = rep.phoneNumber,
                let adress = rep.adress else { return }
            for representative in representatives {
                deleteRep(rep: representative)
            }
            let myRep = Representative(context: Stack.context)
            myRep.name = name
            myRep.adress = adress
            myRep.phoneNumber = phoneNumber
            saveToPersistanceStorage()
        }
        
        private func saveToPersistanceStorage() {
            
            do {
                try Stack.context.save()
            } catch {
                print("AHHH")
            }
        }
    }
    

