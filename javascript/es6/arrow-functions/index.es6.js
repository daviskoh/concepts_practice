/**
 * Syntax
 * - arrow funcs use () for args and => rather than the "function" keyword
 * - single line arrow funcs use implicit returns
 */

var myFunc = (string) => {
    return string.split('').join('0');
};

var anotherFunc = string => string.length;

var add = (n1, n2) => n1 + n2;

console.log(myFunc('aaaaaaaa'));
console.log(anotherFunc('123'));
console.log(add(1,3));

/**
 * This
 * - the value of "this" is lexically bound
 * - see examples from MDN as a reference
 */

// ES5 problem
// - WARNING: below will throw in non-strict mode
// function Person1 () {
    // this.age = 0;

    // (function growUp () {
        // this.age++;
    // })();
// }

// var p = new Person1();
// console.log(p);

// ES5 solution
function Person2 () {
    var self = this;

    self.age = 0;

    (function growUp () {
        self.age++;
    })();
}

var p = new Person2();
console.log(p);

// ES6 solution
function Person3 () {
    this.age = 0;

    (() => this.age++)();
}

var p = new Person3();
console.log(p);

