import Foundation

class Animal {
    let isMale: Bool!
    let dateOfBirth: NSDate!

    var sex: String {
        return isMale! ? "male" : "female"
    }

    var age: Int {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitYear, fromDate: self.dateOfBirth, toDate: NSDate(), options: nil)
        let ageInYears = components.year

        return ageInYears
    }

    init(isMale: Bool, dateOfBirth: NSDate) {
        self.isMale = isMale
        self.dateOfBirth = dateOfBirth
    }

    func walk() {
        println("walking")
    }
}

class Person: Animal {
    var name: String!

    init(isMale: Bool, dateOfBirth: NSDate, name: String) {
        super.init(isMale: isMale, dateOfBirth: dateOfBirth)

        self.name = name
    }

    func talk() {
        println("talking")
    }
}

class Dog: Animal {
    var name: String!

    override var age: Int {
        // NOTE: this is an oversimplification
        // and will not be accurate when human age is equal to 0
        return super.age * 7
    }

    init(isMale: Bool, dateOfBirth: NSDate, name: String) {
        super.init(isMale: isMale, dateOfBirth: dateOfBirth)

        self.name = name
    }

}

let dog = Dog(isMale: false, dateOfBirth: NSDate(), name: "Barky")
println("dog: \(dog)")
println("dog's sex: \(dog.sex)")
println("dog's DOB: \(dog.dateOfBirth)")
println("dog's age in dog years: \(dog.age)")
dog.walk()

let person = Person(isMale: true, dateOfBirth: NSDate(), name: "bob")
println("person: \(person)")
println("person's name: \(person.name) & sex: \(person.sex)")
println("person's DOB: \(person.dateOfBirth)")
println("person's age in years: \(person.age)")
person.walk()
person.talk()

