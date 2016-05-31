// Binary Search Trees

import UIKit

// binary search tree - data structure that stores info in logical hierarchy
// NOTE: not same as binary tree or trie
// key - reps data you would like to store
// indicators - store location of the 2 children, rep using pointers


// generic binary search tree
// BIG O: insertion & lookup run at O(log n)
public class AVLTree<T: Comparable> {
  var key: T?
  var left: AVLTree?
  var right: AVLTree?

  func addNode(key: T) {
    // check head node
    if self.key == nil {
      self.key = key
      return
    }

    // check left side of tree
    if key < self.key {
      if self.left != nil {
        left!.addNode(key)
      } else {
        // create a new left node
        let leftChild = AVLTree()
        leftChild.key = key
        self.left = leftChild
      }  
    }

    // check right side of tree
    if key > self.key {
      if self.right != nil {
        right!.addNode(key)
      } else {
        // create a new right node
        let rightChild = AVLTree()
        rightChild.key = key
        self.right = rightChild
      }
    }
  }
}


let numberList = [8, 2, 10, 9, 11, 1, 7]

var root = AVLTree<Int>()

for n in numberList {
  root.addNode(n)
}

root.right?.right?.key
