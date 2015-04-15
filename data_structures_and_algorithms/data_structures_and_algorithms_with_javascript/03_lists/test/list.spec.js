var List = require('../lib/list.js'),
    should = require('should');

describe('List', function() {
    var newList;

    beforeEach(function() {
        newList = new List;
    });

    it('exists', function() {
        List.should.be.ok;
    });

    it('can be instantiated', function() {
        (new List).should.be.ok;
    });

    describe('#append', function() {
        it('allows an element to be appended to list', function() {
            newList.append(1);

            newList.listSize.should.eql(1);
            newList.dataStore.should.containEql(1);
        });

        it('allows another element to be appended to list', function() {
            newList.append(8);
            newList.append(8);

            newList.listSize.should.eql(2);
            newList.dataStore.should.containEql(8);
        });
    });

    describe('#find', function() {
        it('finds an element and returns its position in list', function() {
            for (var i = 0; i < 10; i++) {
                newList.append(i * 2);
                newList.find(i * 2).should.eql(i);
            };
        });

        it('returns -1 if it cannot find element', function() {
            newList.find(20).should.eql(-1);
        });
    });

    describe('#remove', function() {
        it('removes an element from the list', function() {
            newList.append(5);
            newList.remove(5);
            newList.find(5).should.eql(-1);
        });

        it('returns true if element successfully removed', function() {
            newList.append(5);
            newList.remove(5).should.be.true;
        });

        it('returns false if element unnsuccessfully removed', function() {
            newList.append(5);
            newList.remove(2).should.be.false;
        });
    });

    describe('#length', function() {
        var count;

        it('returns number of elements in list', function() {
            count = 11;

            for (var i = 0; i < count; i++) {
                newList.append(i);
            };

            newList.length().should.eql(count);
        });
    });

    describe('#toString', function() {
        it('should return the .dataStore', function() {
            
        });
    });
});
