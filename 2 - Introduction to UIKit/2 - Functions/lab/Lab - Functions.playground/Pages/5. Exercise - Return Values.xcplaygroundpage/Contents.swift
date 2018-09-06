/*:
 ## Exercise - Return Values and Tuples
 
 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
func greeting(hi: String, yo: String) -> String {
    return hi
    print("Oh I didn't se you there \(hi)")
}
greeting(hi: "Why hello there", yo: "Dan")
/*:
 Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
 */
func math(num1: Int, to num2: Int) -> Int {
    return num1 * num2 + 2
    
}
math(num1: 2, to: 3)
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
