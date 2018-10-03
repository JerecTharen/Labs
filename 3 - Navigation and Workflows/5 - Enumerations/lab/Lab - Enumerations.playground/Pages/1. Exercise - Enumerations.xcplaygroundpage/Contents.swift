/*:
 ## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */
enum Suit {
    case clubs, spades, diamonds, hearts
}
var cardInHands = Suit.hearts
print(cardInHands)


/*
 
 
 
*/

/*:
 Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
 */
cardInHands = Suit.spades
print(cardInHands)

/*:
 Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
 */
func getFortune(cardSuit: Suit) {
    switch cardSuit {
    case .clubs:
        print("favio")
    case .diamonds:
        print("JIMMY")
    case .hearts:
        print("son i will beat you")
    case .spades:
        print("pablo")
    }
    
}

var fortuneOfTheDay = getFortune(cardSuit: .clubs)
fortuneOfTheDay
fortuneOfTheDay = getFortune(cardSuit: .diamonds)
fortuneOfTheDay
fortuneOfTheDay = getFortune(cardSuit: .hearts)
fortuneOfTheDay
fortuneOfTheDay = getFortune(cardSuit: .spades)
fortuneOfTheDay

/*:
 Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
 */
struct Card {
    var suit: Suit
    var value: Value
    enum Value {
        case ace, two, three, four, five, six, seve, eight, nine, ten,jeck, queen, king
    }
}
var card = Card(suit: .clubs, value: .ace)
print("i have a \(card.suit) of \(card.value)")
card = Card(suit: .diamonds, value: .eight)
print("ah yah? well i got a \(card.suit) of \(card.value)")
print("this game sucks")

/*:
 How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
 */


//: page 1 of 2  |  [Next: App Exercise - Swimming Workouts](@next)
