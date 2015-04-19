class Animal {
    var name: String?

    init(name: String?) {
        self.name = name
    }
    
    func walk() {
        println("walking")
    }
}

class Person: Animal {
    func talk() {
        println("talking")
    }
}

let dog = Animal(name: nil)
println("dog: \(dog)")
dog.walk()

let person = Person(name: "bob")
println("person: \(person)")
person.walk()
person.talk()

