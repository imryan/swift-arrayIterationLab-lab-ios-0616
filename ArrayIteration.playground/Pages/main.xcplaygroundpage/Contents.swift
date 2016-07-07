/*: Outline
 
 
 # Arrays & array iteration
 
 ### Readings associated with this lab
 
 * [Array](https://github.com/learn-co-curriculum/swift-array-readme)
 * [Array Iteration](https://github.com/learn-co-curriculum/swift-arrayIteration-readme)
 

 */
/*: question1
 ### 1. You're building an app and want to store all of the ingredients added to a cart. How would you represent this cart in code? The ingredients are "Chips", "Salsa", "Guacamole", "Red wine". Explicitly mark the content of the cart as strings.
 */
// Type 'var' in case it needs to be mutable to take in more items
var cart: [String] = ["Chips", "Salsa", "Guacamole", "Red wine"]
/*: question2
 ### 2. You need to create a list that contains the numbers from 1 to 10. How would you represent this list in code? Explicitly mark the content of the cart as numbers.
 */
var list: [Int] = []

for i in 1...10 {
    list.append(i)
}
/*: question3
 ### 3. Take the list of numbers you created in question 2 and print their values in the most efficient way possible.
 */
for i in list {
    print("[\(i-1)] \(i)")
}
/*: question4
 ### 4. Take the list of shopping cart items you created in question 1 and print their values in the most efficient way possible. Prefix each item in the array with a string of text.
 */
var index = 0

for item in cart {
    index += 1
    print("\(index). \(item)")
}
/*: question5
 ### 5. Take the list of shopping cart items you created in question 1 and print their values by passing each item in list to a function to be printed.
 */
func printItem(item: String) {
    print(item)
}

for item in cart {
    printItem(item)
}
/*: question6
 ### 4. Create a function that takes an array of names and greets each person with the following message "Good morning x" <- x being the individuals name. One caveat. If the persons first name is Michael, we want to greet them with the message, "Top of the morning Michael!".
 */
func greet(name: String) {
    var greeting = "Good morning \(name)!"
    
    if (name == "Michael") {
        greeting = "Top of the morning Michael!"
    }
    
    print(greeting)
}
/*: question7
 ### 7. Create a function that takes an array of Ints (40, 60, 50, 52, 59, 13, 90, 100, 5, 52, 51, 49) and returns an array of Ints. This function should look through the array of Ints and create a new array of Ints that only contain integers less than 50.
 */
func sortInts(ints: [Int]) -> [Int] {
    var goodInts: [Int] = []
    
    for int in ints {
        if (int < 50) {
            goodInts.append(int)
        }
    }
    
    return goodInts
}

let ints = [40, 60, 50, 52, 59, 13, 90, 100, 5, 52, 51, 49]
sortInts(ints)
//: Check here on the solution branch for a link to the solution file
