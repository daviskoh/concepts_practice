// Linked Lists

import UIKit

// linked lists
// like arrays but elements managed independently
// vs contiguously like arrays

// components:
// 1) key - reps data you'd like to store
// 2) indicator - stores location of where next value can be found

// NOTE: structs dont allow recursive value types out of the box
// too lazy to add a patch so ill just use class as the src material does
class LLNode<T> {
  var key: T?
  var next: LLNode?
  var previous: LLNode?

  init(key: T) {
    self.key = key
  }
}

// iterating through linked list
// do: print out all key values in a linked list

let node1 = LLNode(key: 1)
let node2 = LLNode(key: 2)
let node3 = LLNode(key: 3)
node1.next = node2

node2.previous = node1
node2.next = node3

node3.previous = node2


let start = node1
func printAllKeys() {
  var current: LLNode! = start

  while current != nil {
    print(current.key)
    current = current.next
  }
}

printAllKeys()