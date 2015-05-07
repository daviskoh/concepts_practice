// struct - collection of values
// - use for arbitrary values
// class - object w/ properties & behaviors
// - use where identity matters
// - use when inheritance is needed

struct Address {
    var streetAddress1: String!
    var streetAddress2: String?

    var city: String!
    var state: String!
    var zipcode: String!
} 

class Person {
    var name: String!
    var address: Address?

    init(name: String, address: Address?) {
        self.name = name
        self.address = address
    }
}

let bro = Person.init(name: "Dude Broington", address: nil)
let myAddress = Address(
    streetAddress1: "45 5th Avenue",
    streetAddress2: nil,
    city: "New York",
    state: "NY",
    zipcode: "10018"
)
let moiself = Person(name: "Ricky Bobby", address: myAddress)

println("bro's name: \(bro.name)")
println("moiself's name: \(moiself.name)")

