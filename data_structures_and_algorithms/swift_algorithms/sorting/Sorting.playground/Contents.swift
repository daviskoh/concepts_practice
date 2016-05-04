// Sorting

import UIKit

// unsorted integers
let numberList = [8, 2, 10, 9, 11, 1, 7, 3, 4]


// Insertion Sort O(n^2)
// implement an invariant - represents assumptions that remain unchanged throughout execution
// Invariant here
  // subarray until output[i] is ALREADY SORTED before iteration starts
  // this is true as the subarray expands to eventually encompass the entire output
  // at which point the output is sorted

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
        // basically a swap
        output.removeAtIndex(j + 1)
        output.insert(key, atIndex: j)
      }

    }
  }

  return output
}

print(insertionSort(numberList))

// Bubble Sort O(n^2)
func bubbleSort(numberList: Array<Int>) -> Array<Int> {
  guard numberList.count > 1 else {
    return numberList
  }

  var output = numberList

  for var i = 0; i < output.count; i++ {

    for var j = i + 1; j < output.count; j++ {

      if output[i] > output[j] {
        swap(&output[i], &output[j])
      }
    }
  }

  return output
}

print(bubbleSort(numberList))

