import UIKit

var onGuestList = false
var knowsTheOwner = true
var name = "Sam"
var age = 21

if (onGuestList && age >= 21) {
    print("Welcome")
} else if (knowsTheOwner) {
    print("\(name), we'll have to take you to see the owner.")
} else {
    print("Sorry, \(name), maybe you can go play Bingo with the Android team.")
}

let meal = "Breakfast"

switch meal {
case "Breakfast":
    print("Good morning")
case "Lunch":
    print("Good afternoon")
case "Dinner":
    print("Good evening")
default:
    print("Hello")
}

let lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

for c in lorem {
    print(c)
}
