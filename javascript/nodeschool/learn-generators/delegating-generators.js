function *flat (arr) {
    // loop through all elements in arr
    // if arg is num then yield
    // else recurse arg

    for (var i = 0, len = arr.length; i < len; i++) {
        if (typeof arr[i] === 'number') {
            yield arr[i];
        }

        yield *flat(arr[i]);
    }
}

var A = [1, [2, [3, 4], 5], 6];

for (var f of flat(A)) {
    console.log(f);
}
// 1 2 3 4 5 6

