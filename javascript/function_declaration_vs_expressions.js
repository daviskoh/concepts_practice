// function declaration
// function is defined when JS file is parsed
console.log(ello1()); // => 'ello'
function ello1() {
  return 'ello1';
};

// function expression
// function is defined when runtime reaches line of var declaration
console.log(ello2()); // => undefined is not a function
var ello2 = function() {
  return 'ello2';
};

// same as above w/ useless named function
console.log(ello3()); // => undefined is not a function
var ello3 = function ello3() {
  return 'ello3';
};