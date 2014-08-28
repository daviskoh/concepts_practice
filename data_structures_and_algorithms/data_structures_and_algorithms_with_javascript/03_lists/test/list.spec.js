var List = require('../lib/list.js'),
    should = require('should');

describe('List', function() {
    it('exists', function() {
        List.should.be.ok;
    });

    it('can be instantiated', function() {
        (new List).should.be.ok;
    });

    describe('List.append', function() {
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
});
