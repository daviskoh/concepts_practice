function askFoo () {
    var promise = new Promise(function (resolve, reject) {
        resolve('foo');
    });

    console.log(promise);

    return promise;
}

function run (generator) {
    // create iterator from generator
    var iterator = generator();

    iterator.next().value.then(function (foo) {
        // do something w/ foo
    });
}

run(function* () {
    var foo = yield askFoo();
    console.log(foo);
}); // foo

