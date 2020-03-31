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

struct Team {
    var name: String
    var stadium: String
}

let braves = Team(name: "AS", stadium: "AS")
//braves.name = "BS"

enum Season {
    case fall
    case winter
    case spring
    case summer
}

print(Season.fall)

enum AmericanLeagueWest: String {
    case athletics = "Oakland"
    case astros = "Huston"
    case angles = "Los Angles"
    case mariners = "Seattle"
    case rangers = "Arlington"
}

enum DrinkSize: Int {
    case small = 12
    case medium = 16
    case large = 20
}

print(AmericanLeagueWest.angles)
print(AmericanLeagueWest.angles.rawValue)
print(DrinkSize.small.rawValue)

enum Finger: Int {
    case thumb = 1
    case index = 2
    case middle = 3
    case ring = 4
    case pinky = 5
}

print(Finger.pinky)
print(Finger.pinky.rawValue)

var z: Int?
var s: String
s = "1"
z = Int(s)
print(z)

enum Genre: String {
    case country, blues, folk
}

struct Artist {
    let name: String
    var primaryGenre: Genre?
}

struct Song {
    let title: String
    let released: Int
    let artist: Artist?
}

var johnny = Artist(name: "Johnny Cash", primaryGenre: Genre.country)
var walkTheLine = Song(title: "I walk the line", released: 1956, artist: johnny)
if let artist = walkTheLine.artist {
    walkTheLine.artist
} else {
    
}
//print(artist)

struct Tail {
    var length: String
    
    init(length: Int) {
        self.length = "\(length)"
    }
}

struct Animal {
    var name: String
    var species: String = "home sapiens"
    var tail: Tail?
    
    init(name: String, species: String, tailLength: Int?) {
        self.name = name
        self.species = species
        if let tailLength = tailLength {
            self.tail = Tail(length: tailLength)
        } else {
            self.tail = nil
        }
    }
}

var animal = Animal(name: "Lenny", species: "lemur", tailLength: 12)

if let tailLength = animal.tail?.length {
    print("\(tailLength)")
} else {
    print("without tail")
}

func getArtistGenre(song: Song) -> String {
    let str = song.artist?.primaryGenre?.rawValue ?? " "
    return String(str)
}

print(getArtistGenre(song: walkTheLine))

let str = "Converting strings to all-lowercase or all-uppercase is great when you want user input to be case-insensitive. And reversing a string is useful if you want to see if two strings are palindromes."

print(str.first)
print(str.last)
print(str.hasSuffix("con"))

func checkLength(message: String) -> Bool {
    return (message.count > 10 && message.count < 10000) ? true : false
}

print(checkLength(message: str))

func search(message: String, word: String) -> Bool {
    return (message.lowercased().contains(word.lowercased())) ? true : false
}

print(search(message: str, word: "Sam"))
print(search(message: str, word: "e p"))
print(search(message: str, word: "two"))
