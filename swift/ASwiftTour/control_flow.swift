// for-in
let individualScores = [75, 42, 103, 22]
for score in individualScores {
    // NOTE: if condition MUST be Boolean
    if score % 2 == 0 {
        print("Even score: \(score)")
    }
}

let interestingNums = [
    "Prime": [2,3,5],
    "Fibonacci": [1,1,2],
    "Square": [1,4,9],
]
var largest = 0
var largestType: String?
for (kind, nums) in interestingNums {
    for num in nums {
        if num > largest {
            largest = num
            largestType = kind
        }
    }
}
print("largest: \(largest)")
print("largest type: \(largestType!)")

var optionalString: String? = "Hello"
// optionalString = nil
print("optionalString == nil: \(optionalString == nil)")

var optionalName: String? = "John"
var greeting = "Hello!"

// Combine let & if
// - if coditional false, code skipped
// - otherwise optional value is unwrapped and assigned to constant
//   and made available in below block scope
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print("greeting, \(greeting)")

// optional default values
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print("informalGreeting: \(informalGreeting)")

// switch statements
let vege = "red pepper"
switch vege {
case "celery":
    print("Add some raisins")
case "cucumber", "watercress":
    print("That would make good tea")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("everything tastes good in soup")
}

// while
var n = 2
while n < 10 {
    n = n * 2
}
print("n: \(n)")

var m = 2
repeat {
    m = m * 2
} while m < 10
print("m: \(m)")

// indexes in loops
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print("firstForLoop: \(firstForLoop)")

var secondForLoop = 0
for var i = 0; i < 4; i++ {
    secondForLoop += i
}
print("secondForLoop: \(secondForLoop)")

