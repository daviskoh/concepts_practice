var List = require('../lib/list.js'),
    should = require('should');

describe('List', function() {
    it('exists', function() {
        List.should.be.ok;
    });

    it('can be instantiated', function() {
        (new List).should.be.ok;
    });
});
