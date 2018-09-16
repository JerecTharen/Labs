//: Playground - noun: a place where people can play

import UIKit

struct Wheel {
    let diameter: Float
    let width: Float
    let color: UIColor
}

class Car {
    var color: UIColor = .black // properties are here, no dif fromn propteries and composition. it is defined for you
    let year: Int
    let make: String
    let model: String
    // setign default value can make things in init immutable
    
    var wheels: [Wheel] = []
    
    // sttic in frotn fo fucn or propety, means it pertaisn toe very instance in that class. if you now change teh sa=tatic var, all who share share teh var will experiance the change.
    static  var gasPrice: Float = 2.99
    static var explode: Bool = false

   //initializer
    init(color: UIColor, year: Int, make: String, model: String, wheels: [Wheel]) {
        self.color = color
        self.year = year
        self.make = make
        self.model = model
        self.wheels = wheels
    }
    
func changeColor(_ newColor: UIColor) { // (in here of the func, it is an auto let) newColor is a let, a mutating fucnting can let you change ommutable stuff.
        // mutable means you can change, immutable means yoiu cannot
        self.color = newColor
    }
    class func explode(_ explaode: Bool) {
    self.explode = true
        // cannot use self. in a static. static means it goes to all objects, self will try to referance a single type.
        // class func will also act as a static, it will be true for all funcs,
        // initialise means add a property, give default property can help with this.
    }
}
let car: Car = Car.init(color: .blue, year: 90000009, make: "Ford", model: "Exploerer", wheels: [])
var car1: Car = Car(color: .red, year: 2012, make: "chevy", model: "zombie", wheels: [])

car1 = car
car1.changeColor(.yellow)





// VALUE - struc, is a value type. same type of object, but the change does not affect others. it gets copied.
// REFERANCE - class, is a referance type. you all have to share, it , if soemone makes achange you all experiance it. one addres they are looking at.
// other value types, String, Int, Double, Float, Enums.
// REeferance tpyes, UIView, UILabel, UIButton, mostly all UI is a class. UIColr is a struct tho.


// func example-
