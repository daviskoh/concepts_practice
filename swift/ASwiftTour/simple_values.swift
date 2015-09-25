// Array & Dictionaries use [] notation
var shoppingList = ["catfish", "water"]
shoppingList[1] = "dang man"
print("shoppingList: \(shoppingList)")

var occupations = [
    "Malcolm": "Captiain",
    "Kaylee": "Mechanic"
]
occupations["Jayne"] = "PR"
print("occupations: \(occupations)")


// Initializer Syntax
let emptyArray = [String]()
print("emptyArray: \(emptyArray)")
let emptyDictionary = [String: Float]()
print("emptyDictionary: \(emptyDictionary)")

// If Type can be Inferred
shoppingList = []
print("shoppingList: \(shoppingList)")
occupations = [:]
print("occupations: \(occupations)")

