# Chapter 2

## 2.1 Variables

Declare **list** of variables

	var (
		name, location string = "Prince", "Dorne"
		age            int    = 32
	)

**Inferred** typing

	var (
		dude, place = "Homie", "Alaska"
	)

Can be declared 1 by 1

	var name string
	var age int
	var location string

**Short Assignment** can be used inside functions

	func main() {
		// short assignment can be used inside functions
		// same as inferred typing
		age := 34

		// variable can contain any type including functions
		action := func() {
			fmt.Println("acting")
		}
	}

## 2.2 Constants

Single

	const Pi = 3.14

Can be declared in bulk

	const (
		StatusOK       = 200
		StatusCreated  = 201
		StatusAccepted = 202
	)

## 2.3 Printing Constants & Variables

Print & add new line

	fmt.Println("ello", "and", "meow")

Print values using defined format specifier

	fmt.Printf("%s and %s", "ello", "meow")

## 2.4 Packages and Imports

**Entry point** needed for executable software (takes no arguments & returns nothing)

	func main() {    

	}

Package name same as **last element** of import path

	import (
	    "math/rand"

	    // non-standard libs namespaced using web url
	    "github.com/mattetti/goRailsYourself/crypto"
	)


## 2.5 Code Location & 2.6 Exported Name

Fetching Code & Putting Inside GO Path

	$ go get github.com/mattetti/goRailsYourself/crypto

**GOPATH**  
- **bin** contains compiled binaries  
- **pkg** contains compiled versions of available libs  
- **src** contains source code  

Exported if begin w/ **capital letter**

	math.foo
	vs
	math.Foo
	or
	math.FOO

## 2.7 Functions, Signature, Return Values, Named Results

Functions take 0 or more **typed** arguments & return values are **always typed**

	func add(x int, y int) int {
	    return x + y
	}
	// or
	func add(x, y int) int {
	    return x + y
	}
	
	add(1, 3) //=> 4

Return **multiple** values

	func returnDos(x, y string) (string, string) {
	    return x, y
	}

Result return values **can be named** & no longer need to specify them in return statement

	func returnDoses(x, y string) (x, y string) {
	    return
	}

## 2.8 Pointers

**NOTE**: by default Go passes arguments by **VALUE** (copy arguments)  
If desire arguments by **REFERENCE**, need to in pass pointers

To Get Pointer of Value: **&**value

	e.g.
	v := &Vertex{X: 3, Y: 4}	

To De-Reference Pointer: **\***pointer

	// method on pointer type
	func (v *Vertex) Add() {
		// mutates v
		v.X = 6
		return v.X + v.Y
	}
	vs
	// method on value type
	func (v Vertex) Add() {
		// NOT mutate v
		v.X = 6
		return v.X + v.Y
	}


## 2.9 Mutability

Only Constants are Immutable

Arguments are passed **by value**, thus a function receiving a value argument and mutating it **WONT mutate origin value**

	type Artist struct {
	    name, Genre string
	    Songs int
	}
	
	func newRelease(a Artist) int {
	    a.Songs++
	    return a.Songs
	}

To mutate, you must **pass in pointer** as reference

	func newRelease(a *Artist) int {
	    a.Songs++
	    return a.Songs
	}