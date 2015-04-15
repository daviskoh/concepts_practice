// change below to anonymous func
// then look at the stack trace
(function namedFunc() {
    throw new Error('here is an error');
})()
