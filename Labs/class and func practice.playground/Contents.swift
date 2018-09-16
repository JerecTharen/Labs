//: Playground - noun: a place where people can play

import UIKit

class Tendrills {
    let type: String
    let name: String
    var levelOfDoom: Int = 7
    
    init(type: String, name: String) {
        self.type = type
        self.name = name
    }
    func doom() -> String {
        return "WE ARE ALL DOOMED!"
    }
}

class Monster: Tendrills {
    
    override func doom() -> String {
        return "WE ARE ALL SLIGHTLY DOOMED!"
    }
    init(type: String, name: String, levelOfDoom: Int = 3) {
        super.init(type: type, name: name)
        self.levelOfDoom = levelOfDoom
    }
    
}

let tendrills = Tendrills(type: "squeeky", name: "N'zzoth")
print("\(tendrills.name) comes!")
print(tendrills.doom())
let monster = Monster(type: "heavy", name: "yash'arrag", levelOfDoom: 5)
monster.doom()
print(monster.doom())

print("at least we are \(tendrills.type)")
