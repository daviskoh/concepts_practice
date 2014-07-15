package main

import (
	"fmt"
	"log"
	"math/cmplx"
	"os"
	"time"
)

/**
* 3.1 Basic Types
**/

var (
	goIsFun bool       = true
	maxInt  uint64     = 1<<64 - 1
	complex complex128 = cmplx.Sqrt(-5 + 12i)
)

func three1() {
	const f = "%T(%v)\n"
	fmt.Printf(f, goIsFun, goIsFun)
	fmt.Printf(f, maxInt, maxInt)
	fmt.Printf(f, complex, complex)
}

/**
* 3.2 Type Conversion
**/

// T(v) converts value v to type T
var i int = 42
var f float64 = float64(i)
var u uint = uint(f)

// Go requires explicit conversion for assignmy & var passing

func three2() {
	foo := map[string]interface{}{
		"Matt": 42,
	}
	timeMap(foo)
	fmt.Println(foo)

	fake_string := &fakeString{"Ceci n'est pas un string"}
	printString(fake_string)
	printString("Hello, Gophers")
}

/**
* 3.3 Type Assertion
**/

func timeMap(y interface{}) {
	// check if y is map of interfaces
	if z, ok := y.(map[string]interface{}); ok {
		//
		z["updated_at"] = time.Now()
	}
}

type Stringer interface {
	String() string
}

type fakeString struct {
	content string
}

func (s *fakeString) String() string {
	return s.content
}

func printString(value interface{}) {
	switch str := value.(type) {
	case string:
		fmt.Println(str)
	case Stringer:
		fmt.Println(str.String())
	}
}

/**
* 3.4 Structs
**/
// no need for getters & setters
// only exported fields (capitalized) can be accessed outside of package

// struct literal
type Point struct {
	X, Y int
}

type Bootcamp struct {
	Lat, Lon float64
	Date     time.Time
}

func three4() {
	p := Point{1, 2}  // has type Point
	q := &Point{1, 2} // has type *Point
	r := Point{X: 1}  // Y:0 is implicit
	s := Point{}      // X:0 and Y:0

	fmt.Println(p, q, r, s)

	event := Bootcamp{
		Lat: 34.012,
		Lon: -118.495,
	}
	event.Date = time.Now()
	fmt.Println("Event on %s, location (%f, %f)", event.Date, event.Lat, event.Lon)
}

/**
* 3.5 Initializing
**/
// new expression allocates zeroed value of requested type
// and returns pointer to it
var new_int = new(int)

/**
* 3.6 Composition vs Inheritance
**/
// inheritance not supported in Go
// Go instead uses composition & interfaces

// composition (embedding)
type User struct {
	Id             int
	Name, Location string
}

func (u *User) Greetings() string {
	return fmt.Sprintf("Hi %s from %s", u.Name, u.Location)
}

type Player struct {
	// structure will automatically implement User interface
	User
	GameId int
}

type Job struct {
	Command string
	Logger  *log.Logger
}

func three6() {
	// can initialize Player in 2 ways:
	// 1)
	/**
	player := Player{}
	player.Id = 42
	player.Location = "LA"
	player.GameId = 90404
	**/

	// this is not possible:
	/**
	player := Player{
		Id:       42,
		Location: "LA",
		GameId:   9040,
	}
	**/
	// 2)
	player := Player{
		User{Id: 42, Name: "Matt", Location: "LA"},
		90404,
	}

	fmt.Printf("%+v", player)
	fmt.Printf("Id: %d, Name: %s, Location: %s, Game id: %d\n", player.Id, player.Name, player.Location, player.GameId)

	// methods from User are available for Player also
	fmt.Println(player.Greetings())

	// see type Job above
	job := &Job{"demo", log.New(os.Stderr, "Job: ", log.Ldate)}
	job.Logger.Print("test")
}

/**
* 3.7 Exercise
**/
type UserTwo struct {
	Id             int
	Name, Location string
}

func (u *UserTwo) Greetings() string {
	return fmt.Sprintf("Hi %s from %s", u.Name, u.Location)
}

type PlayerTwo struct {
	*UserTwo
	GameId int
}

func NewPlayer(id int, name, location string, gameId int) *PlayerTwo {
	return &PlayerTwo{
		UserTwo: &UserTwo{id, name, location},
		GameId:  gameId,
	}
}

func three7() {
	p := NewPlayer(42, "Matt", "LA", 90404)
	fmt.Println(p.Greetings())
}

func main() {
	// 3.1
	three1()
	// 3.2
	three2()
	// 3.4
	three4()
	// 3.6
	three6()
	// 3.7
	three7()
}
