import UIKit

protocol Drawable {
    func draw()
    
}

struct Square: Drawable {
    func draw() {
        print(size)
    }
    
    let size: Float
}

let sqaure = Square(size: 5)
print(sqaure)
