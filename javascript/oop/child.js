var Parent = require('./parent');

function Child() {
    Parent.apply(this, arguments);
}

Child.prototype = Object.create(Parent.prototype);
Child.prototype.constructor = Child;

Child.prototype.myFunc = function () {
    return Parent.prototype.myFunc.call(this).split('').reverse().join('');
};

module.exports = Child;

