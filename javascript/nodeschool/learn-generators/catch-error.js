function *upper (array) {
    for (var string of array) {
        try {
            yield string.toUpperCase();
        } catch (e) {
            yield null
        }
    }
}

var badItems = ['a', 'B', 1, 'c'];

for (var item of upper(badItems)) {
    console.log(item);
} // should log: A, B, null, C

