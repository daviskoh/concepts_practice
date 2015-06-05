(function () {
    console.log(foo); // => undefined (notice how this does not throw an error)

    var foo;

    foo = 'dude';

    console.log(foo); // => 'dude'

    console.log(cat); // => ReferenceError: cat is not defined

    cat = 'meow';
    console.log(cat); // => 'meow'
})();
