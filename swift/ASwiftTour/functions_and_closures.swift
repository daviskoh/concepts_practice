func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
// NOTE: how 1st arg need NOT be named
let greeting = greet("Bob", day: "Tuesday")
print("greet: \(greeting)")

// tuples for multi return values
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }

        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
// by property name
print("sum: \(statistics.sum)")
// by index
print("sum: \(statistics.2)")

func sumOf(nums: Int...) -> Int {
    var sum = 0
    for num in nums {
        sum += num
    }
    return sum
}
let sum1 = sumOf()
print("sum1: \(sum1)")
let sum2 = sumOf(42, 597, 12)
print("sum2: \(sum2)")

// 1st class functions
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
let incr = makeIncrementer()
print("incr(): \(incr(7))")

// functions as args
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
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
let numbers = [20, 19, 7, 12]
print("hasAnyMatches(): \(hasAnyMatches(numbers, condition: lessThanTen))")

// anonymous closure
let newNumbers = numbers.map({ (number: Int) -> Int in
    if number % 2 != 0 {
        return 0
    }
    let result = 3 * number
    return result
})
print("newNumbers: \(newNumbers)")

// implicit returns
let mappedNumbers = numbers.map({ number in
    3 * number
})
print("mappedNumbers: \(mappedNumbers)")

// numbers as closure arg names
// &
// closure as last arg
let sortedNumbers = numbers.sort { $0 > $1 }
print("sortedNumbers: \(sortedNumbers)")

