class Animal {
    let isMale: Bool!

    var sex: String {
        return isMale! ? "male" : "female"
    }

    init(isMale: Bool) {
        self.isMale = isMale
    }

    func walk() {
        println("walking")
    }
}

class Person: Animal {
    var name: String!

    init(isMale: Bool, name: String) {
        super.init(isMale: isMale)

        self.name = name
    }

    func talk() {
        println("talking")
    }
}

let dog = Animal(isMale: false)
println("dog: \(dog)")
println("dog's sex: \(dog.sex)")
dog.walk()

let person = Person(isMale: true, name: "bob")
println("person: \(person)")
println("person's name: \(person.name) & sex: \(person.sex)")
person.walk()
person.talk()

