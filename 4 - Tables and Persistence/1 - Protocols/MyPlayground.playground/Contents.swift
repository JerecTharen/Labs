import UIKit


struct Person: CustomStringConvertible {
    
    var lastName: String?
    var firstName: String
    
    init(lastName: String?, firstName: String) {
        self.lastName = lastName
        self.firstName = firstName
    }

    var description: String {
        if let unwrappedLastName = lastName {
            return "this person is \(firstName) \(unwrappedLastName)"
        } else {
            return "this person is Han Solo"
        }
    }
}

