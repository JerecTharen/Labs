/*:
 ## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking on the variable name.
 */
var firstDrcimal = 0.65
var secondDecimal = 0.55
/*:
 Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var trueOrFalse = true
firstDecimal = trueOrFalse
print("you cannot use numbers to drscribr true or false, intigers or in this case, doubles would be used instead")
/*:
 Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var name = Robbie
firstDecimal = name
print("again, you cannot use string to describe a doublr, only numbers may be used. They are of different value, one is of dounle the other is of string")

/*:
 Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var numberOfPiesEatenToday = 49
firstDecimal = numberOfPiesEatenToday
print("the values are different. You cannot use intigers for string values.")

//: [Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
