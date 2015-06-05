'use strict';

var Child = require('./child'),
    Parent = require('./parent');

describe('Child', function () {
    it('exists', function () {
        expect(Child).toBeDefined();
    });

    it('should be instantiable', function () {
        var child = new Child();
        expect(child).toEqual(jasmine.any(Child));
    });

    it('should be a sub class of Parent', function () {
        var child = new Child();
        expect(child).toEqual(jasmine.any(Parent));
    });

    describe('Child#myFunc', function () {
        it('should return the .meow1 property reversed', function () {
            var child = new Child('meow1');
            
            expect(child.myFunc()).toEqual('1woem');
        });
    });

    describe('Child#anotherFunc', function () {
        it('should inherit #anotherFunc from Parent', function () {
            var child = new Child();

            spyOn(Parent.prototype, 'anotherFunc');

            child.anotherFunc();

            expect(Parent.prototype.anotherFunc).toHaveBeenCalled();
        });
    });
});
