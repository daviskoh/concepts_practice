class NamedShape {
    var numberOfSides = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }

    func sidesPlus(n: Int) -> Int {
        return numberOfSides + n
    }
}
let shape = NamedShape(name: "Circle")
print(shape.sidesPlus(3))

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength + sideLength
    }

    // excluding "override" will throw compile error
    // to prevent accidental overrides
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let square = Square(sideLength: 4.2, name: "my test square")
print(square.area())
print(square.simpleDescription())

class Circle: NamedShape {
    var radius: Double = 0

    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
}

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        // 1) set subclass properties
        self.sideLength = sideLength
        // 2) set superclass declared properties
        super.init(name: name)
        // 3) change superclass properties
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }

        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
let triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        // before setting new value
        // run any time value changes outside of initializer
        willSet {
            square.sideLength = newValue.sideLength
        }
    }

    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }

    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")

// OPTIONALs
var optionalSquare: Square? = Square(sideLength: 2.4, name: "optional square")
let sideLength = optionalSquare?.sideLength
print(sideLength)
optionalSquare = nil
let nilLength = optionalSquare?.sideLength
print(nilLength)

