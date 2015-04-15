'use strict';

function Parent(string, string2, string3) {
    this.meow = string;
    this.meow2 = string2;
    this.meow3 = string3;
}

Parent.prototype.myFunc = function() {
    return this.meow;
};

function Child() {
    Parent.apply(this, arguments);
}

Child.prototype = Object.create(Parent.prototype);
Child.prototype.constructor = Child;

Child.prototype.myFunc = function() {
    return Parent.prototype.myFunc.call(this).split('').reverse().join('');
};

(function () {
    'use strict';

    var parent = new Parent('bro', 'bro1', 'bro2');
    var child = new Child('dude', 'dude1', 'dude2');

    console.log(parent instanceof Parent);
    console.log(child instanceof Child);

    console.log('******************************************');

    console.log(parent.meow2);
    console.log(parent.meow3);

    console.log(child.meow2);
    console.log(child.meow3);

    console.log('******************************************');

    console.log(parent.myFunc());
    console.log(child.myFunc());
})();