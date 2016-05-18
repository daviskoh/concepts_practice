// Big O Notation

// NOTE: algos may be modified slightly from online src

import UIKit

// Search Values in Sorted Array

let numberList: Array<Int> = [1,2,3,4,5,6,7,8,9,10]

func foundValue(searchValue: Int?) -> Bool {
  if let _ = searchValue {
    return true
  }

  return false
}


// Linear Time O(n)
// - brute force
func linearSearch(sequence: Array<Int>, key: Int) -> Int? {

  // check all possible values
  for n in sequence {
    if n == key {
      return key
    }
  }

  return nil
}

print(foundValue(linearSearch(numberList, key: 4)))
print(foundValue(linearSearch(numberList, key: 41)))

// Logarithmic Time O(log n)
// binary search
func binarySearch(sequence: Array<Int>, key: Int) -> Int? {

  // establish indicies - extensions
  let min = sequence.startIndex
  // in swift, endIndex is the SAME as array count
  let max = sequence.endIndex - 1
  let mid = max / 2

  // check bounds
  if key > sequence[max] || key < sequence[min] {
    return nil
  }

  // evaluate chosen num
  let midNum = sequence[mid]

  if key == midNum {
    return key
  }

  if key < midNum {
    let slice = Array(sequence[min...mid])
    return binarySearch(slice, key: key)
  }

  if key > midNum {
    let slice = Array(sequence[mid+1...max])
    return binarySearch(slice, key: key)
  }

  return nil
}

print(foundValue(binarySearch(numberList, key: 7)))
print(foundValue(binarySearch(numberList, key: 12)))
print(foundValue(binarySearch(numberList, key: 2)))

