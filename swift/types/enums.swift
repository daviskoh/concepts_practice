enum CardinalDirection {
    // member values
    case North, East, South, West
}

var direction: CardinalDirection = .North
// once direction is declared as type CardinalDirection...
direction = .South

// matching member values
switch direction {
case .North:
    println("heading north")
case .South:
    println("heading south")
case .East:
    println("heading east")
case .West:
    println("heading west")
}
