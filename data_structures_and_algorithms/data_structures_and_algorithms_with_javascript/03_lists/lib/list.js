// ADT - Abstract Data Type

/**
 * List ADT - ordered sequence of data
 * each item stored called 'element'
 * list w/ no items will be 'empty'
 * 
 * listSize (prop) - number of elements in list
 * pos (prop) - current position in list
 * length (prop) - returns number of elements in list
 *
 * clear (func) - clears all elements from list
 * toString (func) - returns string representation of list
 * getElement (func) - returns element at current position
 * insert (func) - inserts new element after existing element
 * append (func) - adds new element to end of list
 * remove (func) - removes element from live
 * front (func) - sets current position to 1st element of list
 * end (func) - sets current position to last element of list
 * prev (func) - moves current position back one element
 * next (func) - moves current position forward one element
 * currPos (func) - returns current position in list
 * moveTo (func) - moves current position to specified position
 * 
 * 
 * NOTE: List ADT does not specifiy storage function but array
 * named dataStore will be used for following implementation
 */

// List constructor function
module.exports = function List() {
    // properties
    this.listSize = 0;
    this.pos = 0;
    // initializes an empty array to store list elements
    this.dataStore = [];

    // methods
    this.append = append;
    this.remove = remove;

    // this.clear = clear;
    // this.find = find;
    // this.toString = toString;
    // this.insert = insert;
    // this.front = front;
    // this.end = end;
    // this.prev = prev;
    // this.next = next;
    // this.length = length;
    // this.currPos = currPos;
    // this.moveTo = moveTo;
    // this.getElement = getElement;
    // this.contains = contains;
}

function append(element) {
    // set new element at position of listSize + 1
    // then inc listSize by 1
    this.dataStore[this.listSize++] = element;
}

function remove() {
    // find element in list
    // remove it
    // adjust space in underlying array left by removal
}
