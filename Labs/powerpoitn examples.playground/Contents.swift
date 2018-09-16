//: Playground - noun: a place where people can play

import UIKit

struct Sauce {
    var type: String = "Big bois Spaghetti!"
 
    
    mutating func changeType(_ newType: String) {
        self.type = newType
  
    }
    func makeMore() {
        print(moreSauce())
    }
    func moreSauce() -> String {
        return "make more \(self.type)"
        
    }
}

var alfredo = Sauce(type: "Alfredo")
alfredo.makeMore()
// make func that creates and a funct that prints b4 you call upon it

struct Tentacles {
    var typer: String
    var amoont: Int
    let owner: String
    
    mutating func changeTentacles(_ newTyper: String, newAmoont: Int) {
        self.amoont = newAmoont
        self.typer = newTyper
    }
       
    
    
    func printTentacles() {
        print(newTentacles())
    }
    func newTentacles() -> String {
        return "there are \(self.amoont) tentacles and they are \(self.typer). They all belong to \(owner)."
    }
}
var tentacleAnimal = Tentacles(typer: "long", amoont: 34, owner: "C'thun")
tentacleAnimal.printTentacles()
tentacleAnimal.changeTentacles("heavy", newAmoont: 56)
tentacleAnimal.printTentacles



