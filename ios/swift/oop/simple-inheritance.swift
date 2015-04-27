import Foundation

class Animal {
    let isMale: Bool!
    let dateOfBirth: NSDate!

    var sex: String {
        return isMale! ? "male" : "female"
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

let dog = Animal(isMale: false, dateOfBirth: NSDate())
println("dog: \(dog)")
println("dog's sex: \(dog.sex)")
println("dog's DOB: \(dog.dateOfBirth)")
dog.walk()

let person = Person(isMale: true, dateOfBirth: NSDate(), name: "bob")
println("person: \(person)")
println("person's name: \(person.name) & sex: \(person.sex)")
println("person's DOB: \(person.dateOfBirth)")
person.walk()
person.talk()

