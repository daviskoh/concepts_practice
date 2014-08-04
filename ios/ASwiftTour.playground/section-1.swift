// Playground - noun: a place where people can play

import Cocoa

// code written in global scope used as entry point of app
println("Hello, world")

/** constants **/
let myConstant = 42
// myConstant = 50 results in compile error

// variable
var myVariable = 42
myVariable = 50

// compiler infers type from value assigned

// can explicitly specify type
let anotherConstant: Double = 70
let constant: Float = 4

// values never implicitly converted to another type
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

// string interpolation
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
let friend = "meow"
println("Ello, \(friend)")

/** Arrays **/
var shoppingList = [
    "catfish",
    "water",
    "tulips",
    "blue paint"
]
shoppingList[1]
// initializer syntax
var emptyArray = String[]()
// type inferred
emptyArray = []

/* Dictionary */
var occupations = [
    "malcolm": "captain",
    "kaylee": "mechanic"
]
occupations["jayne"] = "pr"
// initializer syntax
var emptyDictionary = Dictionary<String, Float>()
// type inferred
emptyDictionary = [:]

// Control Flow
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
    
    println(score)
}
teamScore

// Optional Types
var optionalString: String? = "Hello"
optionalString == nil

//var optionalName: String? = "John Appleseed"
var optionalName: String? = nil
var greeting = "Hello!"
// unless optionalName is nil, constant name gets eval & available inside block scope
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, dude"
}

// Switch Statements
// program exits from statement after matched case (unlike JavaScript)
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins"
    case "cucumber", "watercress":
        let vegetableComment = "Would make tea"
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it spicy \(x)?"
    // default case required
    default:
        let vegetableComment = "Everything taste good"
}

// For-In
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
var numberType = "ello"
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            numberType = kind
        }
    }
}
largest
numberType

// While
var n = 2
while n < 100 {
    n = n * 2
}
n
// condition can be at end to ensure run at least once
var m = 2
do {
    m = m * 2
} while m < 100
m

// range of indexes using .. or ...
// these 2 loops are the same:
var firstForLoop = 0
for i in 0..3 {
    firstForLoop += i
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 3; ++i {
    secondForLoop += 1
}
secondForLoop

/* Functions & Closures */

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Bob", "Tuesday")

// return multiple values as tuple
func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}
getGasPrices()

// functions can take varying amount of arguments
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)

func hasAnyMatches(list: Int[], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)

// write closure w/o name
// use 'in' to sep out arg & return type from body
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    
    if !(number % 2 == 0) {
        return 0
    }
    
    return result
})

// can omit type of params, return type, or both
// single line closures implicitly return value
// of only statement
numbers.map({ number in 3 * number })

// can refer to params by number
sort([1, 5, 3, 12, 2]) { $0 > $1 }

// Objects & Classes

// props and methods defined within class scope
// no need to subclass any standard root class
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    // initializer
    init(name: String) {
        self.name = name
    }

    // deinitializer runs after object deallocated
//    deinit() {
//        println("ello")
//    }
    
    func simpleDescription() -> String {
        return "A \(name) with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    let TYPE = "square"
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    // methods on subclass that override
    override func simpleDescription() -> String {
        return "A \(TYPE) with sides of length \(sideLength)"
    }
}

class Circle: NamedShape {
    let pi = 3.14159
    let type = "circle"
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return pi * (self.radius * self.radius)
    }
    
    override func simpleDescription() -> String {
        return "A \(type) with sides of radius \(self.radius)"
    }
}

class EquilateralTriange: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    // properties can have getter & setter
    var perimeter: Double {
    get {
        return 3.0 * sideLength
    }
    set { // can provide explicit name in () after set
        // new value has implicit name newValue
        sideLength = newValue / 3.0
    }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

// create new instance of Class by Class()
var shape = NamedShape(name: "bob")
shape.simpleDescription()

var square = Square(sideLength: 5.2, name: "my test square")
square.area()
square.simpleDescription()

var circle = Circle(radius: 3.12, name: "dat circle")
circle.area()
circle.simpleDescription()

var triangle = EquilateralTriange(sideLength: 3.1, name: "a triange")
triangle.perimeter
triangle.perimeter = 9.9
triangle.sideLength


// optional values (NOT SURE)
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

// Enumerations
// Enumeration: RawValueType
enum Rank: Int {
    // set starting value & all others increment
    case Ace = 1
    case Two, Three, Four, Five, Siz, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    // enumerations can have methods
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}
let ace = Rank.Jack
let aceRawValue = ace.toRaw()

// func that compares 2 Rank values
func largerOfTwo(rankOne: Rank, rankTwo: Rank) -> Rank {
    if rankOne.toRaw() > rankTwo.toRaw() {
        return rankOne
    }
    
    return rankTwo
}
largerOfTwo(Rank.Jack, Rank.King).toRaw()

// convert from raw value via fromRaw()
if let convertedRank = Rank.fromRaw(3) {
    let threeDescription = convertedRank.simpleDescription()
}

// raw value not required
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .Spades:
            fallthrough
        case .Clubs:
            return "black"
        case .Hearts:
            fallthrough
        case .Diamonds:
            return "red"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
hearts.color()

// Structs
// structs always passed by VALUE
// vs
// classes passed by REFERENCE
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    static func createFullDeck() -> Card[] {
        // for each suit, fill deck w/ each rank
        var deck = Card[]()
        for suit in [Suit.Spades, Suit.Hearts, Suit.Diamonds, Suit.Clubs] {
            for i in (1..13) {
                var newCard = Card(rank: Rank.fromRaw(i)!, suit: suit)
                 deck.append(newCard)
            }
        }
        
        return deck
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeofSpadesDescription = threeOfSpades.simpleDescription()
Rank.fromRaw(3)

Card.createFullDeck()

// Protocols
protocol ExampleProtocol {
    var simpleDescription: String { get }
    // method that modifies structure
    mutating func adjust()
}

// classes, enumerations, structs can all adopt protocols
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    // mutating keyword not needed on class because methods on class always mutate
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

enum SimpleEnumeration: ExampleProtocol {
    case Base, Adjusted
    
    var simpleDescription: String { get {
        return self.getDescription()
    }
    }
    
    func getDescription() -> String{
        switch self{
        case Base:
            return "A simple description of enum"
        case .Adjusted:
            return "Adjusted description of enum"
        default:
            return "default description"
        }
    }
    
    mutating func adjust() -> Void{
        self = SimpleEnumeration.Adjusted
    }
}

var e = SimpleEnumeration.Base
e.adjust()
let eDescription = e.simpleDescription

// Extensions
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}
7.simpleDescription

extension Double {
    var absoluteValue: Double {
        return abs(self)
    }
}
(-1.2).absoluteValue

// sets protocolValue = instance of SimpleClass
// runtime type of SimpleClass but
// compiler treats as given type ExampleProtocol
let protocolValue: ExampleProtocol = a
protocolValue.simpleDescription
//protocolValue.anotherProperty // shows error

// Generics
func repeat<ItemType>(item: ItemType, times: Int) -> ItemType[] {
    var result = ItemType[]()
    for i in 0..times {
        result += item
    }
    return result
}
repeat("knock", 4)

// reimplementation fo Swift standard lib's optional type
enum OptionalValue<T> {
    case None
    case Some(T)
}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)

// use 'where' after type name to specify list of requirements
func anyCommonElements <T, U where T: Sequence, U: Sequence, T.GeneratorType.Element: Equatable, T.GeneratorType.Element == U.GeneratorType.Element> (lhs: T, rhs: U) -> Array {
    
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])
