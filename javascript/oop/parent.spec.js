'use strict';

var Parent = require('./parent');

describe('Parent', function () {
    it('exists', function () {
        expect(Parent).toBeDefined();
    });
    
    it('is instantiatable', function () {
        var parent = new Parent();
        expect(parent).toEqual(jasmine.any(Parent));
    });

    describe('Parent#myFunc', function () {
        it('should return the .meow1 property', function () {
            var meow1 = 'bro',
                parent = new Parent(meow1);
            expect(parent.myFunc()).toEqual(meow1);
        });
    });

    describe('Parent#anotherFunc', function () {
        it('should return 5', function () {
            var parent = new Parent();
            expect(parent.anotherFunc()).toEqual(5);
        });
    });
});
