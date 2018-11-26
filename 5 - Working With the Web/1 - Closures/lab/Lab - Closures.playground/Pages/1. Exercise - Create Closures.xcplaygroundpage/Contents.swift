/*:
 ## Exercise - Create Closures
 
 Create a closure assigned to a constant `blankClosure` that has no parameters and no return value.
 */
let blankClosure = { () -> Void in
    
}

/*:
  Create a closure assigned to a constant `fourClosure` that has no parameters and returns an `Int`. The body of the closure should always return the value 4. Call the closure four times.
 */
let fourClosure = { () -> Int in
    
    return 4
}
// is this whart it wants? i mean i kinda just like,... i dunno. i didnt need the let clsoe but i did it coz... idk 4x? ok : :P
let close = fourClosure()
print(close)
print(fourClosure())
print(fourClosure())
print(fourClosure())
/*:
 Create a closure assigned to a constant `greeting` that accepts a `name` string argument with no return value. Within the body of the closure, print the argument. Call the closure four times using "Gary", "Jane", "Rick", and "Beth" as arguments.
 */
let names = ["jim", "jam", "joom", "jreee"]
let greeting = names.map { ($0)
    print($0)
}

//: page 1 of 3  |  [Next: Exercise - Passing Closures as Arguments and Syntactic Sugar](@next)
