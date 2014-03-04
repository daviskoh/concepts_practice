// function declaration
// function is defined when JS file is parsed
function ello() {
  return 'ello';
};

// function expression
// function is defined when runtime reaches line of var declaration
var ello = function() {
  return 'ello';
};

// same as above w/ useless named function
var ello = function ello() {
  return 'ello';
};