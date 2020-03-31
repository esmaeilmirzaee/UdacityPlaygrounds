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


var dice_one = 2
var dice_two = 2

while (!(dice_one == 1 && dice_two == 1)) {
    dice_one = Int(arc4random() % 6) + 1
    dice_two = Int(arc4random() % 6) + 1
    print(dice_one)
    print(dice_two)
}

for num in 1...1000 {
    if (num % 2 == 0) {
        print(num)
    }
}


while (true) {
    let coin_one = Int(arc4random() % 2) + 1
    let coin_two = Int(arc4random() % 2) + 1
    print("\(coin_one), \(coin_two)")
    if (coin_one == 1 && coin_two == 1) {
        break
    }
}

func loveIt(name: String) {
    print("J'adore \(name)")
}

loveIt(name: "Swift")

func areaOfRectangle(length: Int, width: Int) {
    print("\(length) * \(width)")
}

areaOfRectangle(length: 10, width: 5)

func sumOrDifference(a: Int, b: Int, sum: Bool) {
    if sum {
        print(a + b)
    } else {
        print(a - b)
    }
}
sumOrDifference(a: 5, b: 3, sum: false)

func areaOfTriangle(base: Int, height: Int) -> Double {
    return Double(base * height) * 0.5
}

print(areaOfTriangle(base: 10, height: 7))

func endOfYearBonus(basePay: Double, bonus: Double, percentBonus: Double = 0.10) -> Double {
    return basePay + bonus * (basePay * percentBonus)
}

print(endOfYearBonus(basePay: 10000, bonus: 2000))
print(endOfYearBonus(basePay: 10000, bonus: 2000, percentBonus: 0.15))

struct Author {
    let firstName: String
    let lastName: String
    var living: Bool
}

struct Movie {
    let name: String
    let year: Int
}

let theInformer = Movie(name: "The Informer", year: 2019)
print(theInformer)

struct GeoLocation {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

let udacityGeoLocation = GeoLocation(latitude: 37.400073, longitude: -122.108400)
print(udacityGeoLocation)
//udacityGeoLocation.latitude = 0.0
//print(udacityGeoLocation)

struct Beaker {
    let volumeMillimeters: Double
    static var madeIn = "Proudly in Canada"
    
    var volumeOunces: Double {
        return volumeMillimeters * 0.33814
    }
    
    func canContainContents(otherBeaker: Beaker) -> Bool {
        return volumeMillimeters >= otherBeaker.volumeMillimeters
    }
}

let beaker = Beaker(volumeMillimeters: 20.00)
print(Beaker.madeIn)

struct Product {
    let name: String
    var price: Double
    
    var formattedPrice: String {
        return "$\(price)"
    }
    
    mutating func discount() {
        price *= 0.1
    }
}

var product = Product(name: "Ice Cream", price: 10)
product.discount()
print("\(product.name): \(product.formattedPrice)")
