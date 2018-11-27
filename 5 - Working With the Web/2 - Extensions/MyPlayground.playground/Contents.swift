import UIKit

var str = "Hello, playground"

extension String {
    func pluralization() -> String {
        return self + "s"
    }
    func jelloize() -> String {
        return self.split(separator: " ").map {$0 == "boi" ? "jello" : $0 }.joined(separator: " ")
    }
    
}

var rere = "dog"
rere.pluralization()

var sentence = "every good boi is good"
sentence.jelloize()

extension CustomStringConvertible {
    var description: String {
        return "hahaha FOOOOOL!"
    }
}

struct Thing : CustomStringConvertible {
    var name: String
}

let thing = Thing(name: "hello")
print(thing)
