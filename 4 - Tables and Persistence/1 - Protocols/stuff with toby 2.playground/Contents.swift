import UIKit

struct Animal: CustomStringConvertible {
    var description: String {
        return "Animal(color: brown, \(height) \(age)"
    }
    
    let color: UIColor
    let height: Int
    let age: Int
    
}

let animal = Animal(color: .brown, height: 26, age: 2)
print(animal)
