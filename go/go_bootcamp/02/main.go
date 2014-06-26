package main

import (
	"fmt"
)

/**
* Variables
**/

// declares list of variables
var (
	name, location string = "Prince", "Dorne"
	age            int    = 32
)

// inferred typing
var (
	dude, place = "Homie", "Alaska"
)

// can be declared 1 by 1
var name string
var age int
var location string

func main() {
	// short assignment can be used inside functions
	// same as inferred typing
	age := 34

	// variable can contain any type including functions
	action := func() {
		fmt.Println("acting")
	}
}

/**
* Constants
**/
const Pi = 3.14

// can be declared in bulk
const (
	StatusOK       = 200
	StatusCreated  = 201
	StatusAccepted = 202
)

/**
* Printing Constants & Variables
**/

// print & add new line
fmt.Println("ello", "and", "meow")
// print values using defined format specifier
fmt.Printf("%s and %s", "ello", "meow")


/**
* Packages and Imports
**/

// entry point needed for executable software
func main() {    

}

// package name same as last element of import path
// ex:
import (
    "math/rand"

    // non-standard libs namespaced using web url
    "github.com/mattetti/goRailsYourself/crypto"
)

/**
* Code Location & Exported Name
**/

// Fetching Code & Putting Inside GO Path
// $ go get github.com/mattetti/goRailsYourself/crypto

// GOPATH
// bin contains compiled binaries
// pkg contains compiled versions of available libs
// src contains source code

// exported if begin w/ capital letter
// ex: 
// math.foo vs math.Foo or math.FOO

/**
* Functions, Signature, Return Values, Named Results
**/

// functions take 0 or more typed arguments
// return values are always typed
func add(x int, y int) int {
    return x + y
}
// or
func add(x, y int) int {
    return x + y
}
add(1, 3) //=> 4

// return multiple values
func returnDos(x, y string) (string, string) {
    return x, y
}

// result parameters can be named
// no longer need to specify them in return statement
func returnDoses(x, y string) (x, y string) {
    return
}

/**
* Pointers
**/

// NOTE: by default Go passes arguments by VALUE (copy arguments)
// if desire arguments by REFERENCE, need to in pass pointers

// To Get Pointer of Value:
// use & symbol

// To DeReference Pointer:
// use * symbol

/**
* Mutability
**/

// Only Constants are Immutable

type Artist struct {
    name, Genre string
    Songs int
}

// Arguments are passed by value, thus a function receiving
// a value argument and mutating it WONT mutate origin value
func newRelease(a Artist) int {
    a.Songs++
    return a.Songs
}
// To mutate, you must pass in pointer as reference
func newRelease(a *Artist) int {
    a.Songs++
    return a.Songs
}