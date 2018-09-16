//: Playground - noun: a place where people can play

import UIKit

class Spaghetti {
    var meatBalls: Int
    var tentacles: Int
    var levelOfDoom: Int
    init(meatBalls: Int, tentacles: Int) {
        self.meatBalls = meatBalls
        self.tentacles = tentacles
        levelOfDoom = meatBalls * tentacles
    }
    func levelOfDoom2() {
        print(levelOfDoom)
    }
}
let spaghetti = Spaghetti(meatBalls: 5, tentacles: 55)
spaghetti.levelOfDoom2()

