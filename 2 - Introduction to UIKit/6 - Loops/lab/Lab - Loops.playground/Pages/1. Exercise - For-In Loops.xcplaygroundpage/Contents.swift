/*:
 ## Exercise - For-In Loops
 
 Create a for-in loop that loops through values 1 to 100, and prints each of the values.
 */
for pie in 1...100 {
    print(pie)
}

/*:
 Create a for-in loop that loops through each of the characters in the `alphabet` string below, and prints each of the values alongside the index.
 */
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
for letter in alphabet{
    print("a is for anxiety: \(letter)")
}

/*:
 Create a `[String: String]` dictionary, where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, then use a for-in loop to iterate over the pairs and print out the keys and values in a sentence.
 */
// im going to do pies and flavors instead
var pies = ["cherry": "red", "blueberry": "blue", "doom": "doh"]
for (pieName, pieFlavor) in pies {
    print("a \(pieName) is flavored \(pieFlavor)")
}

//: page 1 of 6  |  [Next: App Exercise - Movements](@next)
