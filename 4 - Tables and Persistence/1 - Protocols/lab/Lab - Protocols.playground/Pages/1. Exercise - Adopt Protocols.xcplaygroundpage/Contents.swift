/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: CustomStringConvertible {
    
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
    }
    var description: String {
        return "Hello, my name is \(name) and I am \(age) years old"
    }
}

let joe = Human(name: "Joe", age: 27)
let sam = Human(name: "Sam", age: 23)
print(joe)
print(sam)
/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */


/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */
class Human2: Equatable {
    static func == (lhs: Human2, rhs: Human2) -> Bool {
        return lhs.age == rhs.age && lhs.name == rhs.name
    }
    
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
    }
}
let samePerson = Human2(name: "jim", age: 2)
let samePerson2 = Human2(name: "jam", age: 2)
func humanz() {
if samePerson == samePerson2 {
    print("tru")
} else {
    print("nah brah")
    }
}
humanz()


/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */
class Human3: Equatable, Comparable, Codable {
    
    static func == (lhs: Human3, rhs: Human3) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    static func < (lhs: Human3, rhs: Human3) -> Bool {
        return lhs.age < rhs.age
    }
    
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
    }
}
let tim = Human3(name: "Tim", age: 21)
let tam = Human3(name: "Tam", age: 22)
let toom = Human3(name: "Toom", age: 24)
let workers = [tim, tam, toom]
let sortHumans = workers.sorted(by: <)
for employee in sortHumans {
    print(employee)
}
/*:
 Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
 */
import Foundation



class Human4: Equatable, Comparable, Codable {
    
    static func == (lhs: Human4, rhs: Human4) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    static func < (lhs: Human4, rhs: Human4) -> Bool {
        return lhs.age < rhs.age
    }
    
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
    }
}
let kim = Human4(name: "Kim", age: 17)

let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(kim),
    let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
}





//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
