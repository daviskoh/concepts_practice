function askFoo () {
    var promise = new Promise(function (resolve, reject) {
        resolve('foo');
    });

    return promise;
}

function run (generator) {
    // create iterator from generator
    var iterator = generator();

    // extract promise
    iterator.next().value
        .then(function (foo) {
            // continue execution when successfull
            iterator.next(foo);
        })
        .catch(function (e) {
            iterator.throw(e);
        });
}

run(function* () {
    try {
        var foo = yield askFoo();
        console.log(foo);
    } catch (e) {
        console.log(e);
    }
}); // foo

