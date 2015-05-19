// 'use strict'; // try uncommenting this line

var a = {
    meow: 'foo1',
    sayMeow: function () {
        console.log(this.meow);
    }
};

console.log(a.meow); // => 'foo1'
a.sayMeow(); // => 'foo1'

var sayThatMeow = a.sayMeow;
sayThatMeow(); // => undefined

var b = {
    meow: 'foo2'
};
b.sayMeow = a.sayMeow;
b.sayMeow(); // => foo2

this.meow = 'foo3';
sayThatMeow.call(this); // => foo3

this.sayMeow = a.sayMeow;
this.sayMeow(); // => foo3

