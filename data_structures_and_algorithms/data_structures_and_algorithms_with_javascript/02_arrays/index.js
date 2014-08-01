/**
* Chapter 2 Arrays
**/

// array is speciallized JS Object
// indices are actually converted to strings to conform to Object
// not as efficient as arrays in other languages

// check if array
Array.isArray([1,2,3]);

/**
* Using Arrays
**/

// Aggregate Array Operations

// when assign array to another array,
// assigning reference to assigned array
// changing original array changes other array

// shallow copy - new array points to original array's elements
// ex
var nums = [];

for (var i = 0; i < 100; i++) {
    nums[i] = i+1;
};
var samenums = nums;
nums[0] = 400;
console.log('samenums 1st element:', samenums[0]);

// deep copy - each of original array's elements copied to new array
// ex
function copy (array1, array2) {
    for (var i = 0; i < array1.length; i++) {
        array2[i] = array1[i];
    };
}

var nums = [];

for (var i = 0; i < 100; i++) {
    nums[i] = i+1;
};
copy(nums, samenums);
nums[0] = 400;
console.log('samenums 1st element:', samenums[0]);

/**
* Accessor Functions (skip)
* return some representation of target array
**/

/**
* Mutator Functions
* modify contents of array w/o referencing individual elements
**/

var nums = [2,3,4,5];
var newNum = 1;
function myUnshift (array, element) {
    for (var i = array.length; i >= 0; i--) {
        array[i] = array[i - 1];
    };

    array[0] = element;
}
myUnshift(nums, newNum); // if not have unshift()

var nums = [1,2,3,4,5,9];
// this func leaves extra element at end
function myPop (array) {
    for (var i = array.length - 1; i >= 0; i--) {
        array[i] = array[i + 1];
    };
}
myPop(nums); // if not have pop()

