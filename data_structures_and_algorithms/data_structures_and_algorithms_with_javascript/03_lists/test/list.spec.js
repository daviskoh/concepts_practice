var List = require('../lib/list.js'),
    should = require('should');

describe('List', function() {
    it('exists', function() {
        List.should.be.ok;
    });

    it('can be instantiated', function() {
        (new List).should.be.ok;
    });

    describe('#append', function() {
        var newList = new List;

        it('allows an element to be appended to list', function() {
            newList.append(1);
            newList.listSize.should.eql(1);
            newList.dataStore.should.containEql(1);
        });

        it('allows another element to be appended to list', function() {
            newList.append(8);
            newList.listSize.should.eql(2);
            newList.dataStore.should.containEql(8);
        });
    });

    describe('#find', function() {
        var newList = new List;

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
        var newList = new List;

        xit('removes an element from the list', function() {
            
        });
    });
});
