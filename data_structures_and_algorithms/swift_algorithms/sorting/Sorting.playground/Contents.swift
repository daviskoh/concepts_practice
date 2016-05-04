// Sorting

import UIKit

// unsorted integers
let numberList = [8, 2, 10, 9, 11, 1, 7, 3, 4]

// Insertion Sort O(n^2)
// implement an invariant - represents assumptions that remain unchanged throughout execution

func insertionSort(numberList: Array<Int>) -> Array<Int> {
  // check for trivial case
  // guard - exit current block if condition isnt met
  guard numberList.count > 1 else {
    return numberList
  }

  // mutated copy
  var output = numberList

  for i in 0..<output.count {
    let key = output[i]

    for var j = i; j > -1; j-- {

      print(key)
      print(output[j])
      if key < output[j] {
        // move into correct position
        output.removeAtIndex(j + 1)
        output.insert(key, atIndex: j)
      }

    }
  }

  return output
}

print(insertionSort(numberList))

