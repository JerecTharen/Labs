/*:
 ## App Exercise - Workout Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkout {
    static var distance: Double = 100
    static var time: Double = 3.15
    static var elevation: Double = 8
    
}
let distance = RunningWorkout.distance
let time = RunningWorkout.time
let elevation = RunningWorkout.elevation
print(distance, time, elevation)
/*:
 A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
 */
struct Steps {
    var goal: Int = 1000
    var steps: Int = 0 {
       
    willSet {
    print("current steps \(currentSteps)")
    }
    didSet {
    if steps > oldSteps {
    print("addded \(steps - oldSteps)")
        }
    }
    }
    mutating func increment(by amount: Int) {
        steps += amount
    }
    
}
var steps = Steps()
steps.steps = 800
    steps.goal = 10000
steps.increment(by: 1)
//: [Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Computed Properties and Property Observers](@next)
