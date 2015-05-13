var fs = require('fs');

function run (generator) {
    function go (err, files) {
        console.log('go() with args: ', arguments);
        
        if (err) {
            it.throw(err);
        }

        it.next(files);
    }

    console.log('iterator created from generator(go) aka used as done() callback');
    var it = generator(go);

    console.log('calling go() for the 1st time');
    go();
}

run(function* (done) {
    console.log('done: ', done);

    // read 'learn-generators' exercises folder
    console.log('fs.readdir() w/ callback done(err, files)');
    // var exercises = yield fs.readdir('exercises', done);
    try {
        var dirFiles = yield fs.readdir('nononono', done),
            firstfile = dirFiles[0];
    } catch (e) {
        var firstFile = null;
        yield e
    }

    console.log(firstFile);
});

