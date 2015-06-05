'use strict';

function Parent(string1, string2, string3) {
    this.meow1 = string1;
    this.meow2 = string2;
    this.meow3 = string3;
}

Parent.prototype.myFunc = function () {
    return this.meow1;
};

Parent.prototype.anotherFunc = function () {
    return 5;
};

module.exports = Parent;

