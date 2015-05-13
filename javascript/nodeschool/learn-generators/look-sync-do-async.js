var fs = require('fs');

function run (generator) {
    function go (err, files) {
        if (err) {
            it.throw(err);
        }

        it.next(files);
    }

    var it = generator(go);

    go();
}

run(function* (done) {
    var firstFile;

    try {
        var dirFiles = yield fs.readdir('nononono', done);
        firstfile = dirFiles[0];
    } catch (e) {
        firstFile = null;
        yield e
    }

    console.log(firstFile);
});

