// Generics

import UIKit

// T - placeholder
// w/ generics, can be used anywhere a class ref is expected
class LLNode<T> {
  var key: T?
  var next: LLNode<T>?
  var previous: LLNode<T>?
}

// let studentList = LLNode<Student>()
// let teacherList = LLNode<Teacher>()

// Below is expanded LL implementation
// Equatable - protocol that ensures types conform to its specification

public class LinkedList<T: Equatable> {
  private var head: LLNode<T> = LLNode<T>()

  // add generic nodes at specified index
  func addLinkAtIndex(key: T, index: Int) {
    // establish head node
    if head.key == nil {
      head.key = key
      return
    }

    // establish trailer, current and new items
    var current: LLNode<T>? = head
    var trailer: LLNode<T>?
    var listIndex: Int = 0

    // iterate through list to find insertion point
    while current != nil {

      if index == listIndex {
        let childToUse: LLNode = LLNode<T>()
        // create new node
        childToUse.key = key
        // connect node infront of current node
        childToUse.next = current
        childToUse.previous = trailer

        // use optional binding for adding trailer
        if let linktrailer = trailer {
          linktrailer.next = childToUse
          childToUse.previous = linktrailer
        }

        // point new node to current / previous
        current!.previous = childToUse

        // replace head node if required
        if index == 0 {
          head = childToUse
        }

        break
      }

      // continue iteration
      trailer = current
      current = current?.next
      listIndex++
    }
  }
}