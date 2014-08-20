package intpkg

import (
	"testing"
)

func TestAdd2Ints(t *testing.T) {
	if Add2Ints(3, 3) != 6 {
		t.Error("Does not add 2 numbers")
	} else {
		t.Log("Adds 2 numbers")
	}
}

func TestMultiply2Ints(t *testing.T) {
	if Multiply2Ints(2, 4) != 8 {
		t.Error("Does not multiply 2 numbers")
	} else {
		t.Log("Multiplies 2 numbers")
	}
}
