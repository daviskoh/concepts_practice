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

  // Tree Balancing Chapter

  func getNodeHeight(node: AVLTree!) -> Int {
    if node == nil {
      return -1
    } else {
      return node.height
    }
  }

  var height: Int {
    // looks sketchy i know but just fucking run w/ it for now...
    get { return self.height }

    set {
      if self.key == nil {
        return
      }

      self.height = max(getNodeHeight(self.left), getNodeHeight(self.right)) + 1
    }
  }

  func isTreebalanced() -> Bool {
    if self.key == nil {
      return false
    }

    if abs(getNodeHeight(self.left) - getNodeHeight(self.right)) <= 1 {
      return true
    } else {
      return false
    }
  }
}


let numberList = [8, 2, 10, 9, 11, 1, 7]

var root = AVLTree<Int>()

for n in numberList {
  root.addNode(n)
}

root.right?.right?.key



// Tree Balancing

// Added in Chapter:
// getNodeHeight()
// .height
// isTreeBalanced()

// balanced BST - all nodes have 1 or 2 children (lead nodes)

// unbalanced BSTs can be left or right heavy
/**
 * ex: right-heavy
 *
 *    (29)
 *    /  \
 *  (18) (20)
 *          \
 *          (23)
 */

let balanceList = [29, 26, 23]

// NOTE: in ComSci, tree considered balanced IF height diff bet leaf nodes < 2
// ex:
var rootVal = abs((0) - (-1)) // equals 1 (balanced)
var leafVal = abs((-1) - (-1)) // equals 0 (balanced)

// use .height to detect tree imbalances
// 1) add root node
// 2) left / right leaves set to nil, as they dont exist yet

/**   (29)
 *    /  \
 * (nil) (nil)
 */

// get height of each left, find largest, +1
// ex. for root node (like 29 above) this is 0

/**   (29)
 *    /
 *  (26)
 */

// now height of 29 is 1
// height of 26 is 0

/**    (29)
 *     /
 *  (26)
 *   /
 * (23)
 */

// now height of 29 is 2, tree is no longer balanced
// need to use ROTATION to re-balance the tree

