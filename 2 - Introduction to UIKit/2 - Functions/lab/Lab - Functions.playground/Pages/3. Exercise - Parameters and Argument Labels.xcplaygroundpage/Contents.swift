/*:
 ## Exercise - Parameters and Argument Labels
 
 Write a new introduction function called `introduction`. It should take two `String` parameters, `name` and `home`, and one `Int` parameter, `age`. The function should print a brief introduction. I.e. if "Mary," "California," and 32 were passed into the function, it might print "Mary, 32, is from California." Call the function and observe the printout.
 */
func introduction(_ name: String, and Home: String, to Age: Int = 0) {
    print("Hello  i am \(name) I live in at \(Home) and my age is \(Age) ")
}

introduction("Ty", and: "House", to: 25)
/*:
 Write a function called `almostAddition` that takes two `Int` arguments. The first argument should not require an argument label. The function should add the two arguments together, subtract 2, then print the result. Call the function and observe the printout.
 */
func almostAddition(num1: Int, num2: Int) {
    let result = num1 + num2 - 2
    print("Your score is \(result)")
}
almostAddition(num1: 2, num2: 4)
/*:
 Write a function called `multiply` that takes two `Double` arguments. The function should multiply the two arguments and print the result. The first argument should not require a label, and the second argument should have an external label, "by", that differs from the internal label. Call the function and observe the printout.
 */
func multiply(num3: Double, by num4: Double) {
    let score = num3 * num4
    print(score)
}
 multiply(num3: 4, by: 6)
//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Progress Updates](@next)
