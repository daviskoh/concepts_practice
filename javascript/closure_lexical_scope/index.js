function attemptIncrementOnNumberArgument (i) {
    i++;
}

var i = 0;
function incrementLexicallyScopedNumber () {
    i++;
}

var n = 0;
attemptIncrementOnNumberArgument(1);
console.log(n); // => 0

incrementLexicallyScopedNumber();
console.log(i); // => 1
