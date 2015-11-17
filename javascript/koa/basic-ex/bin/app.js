'use strict';

var Koa = require('koa');
var co = require('co');
var app = new Koa();
require('babel-polyfill');

var port = process.env.PORT || 3000;

app.use(function _callee(ctx, next) {
    var start, ms;
    return regeneratorRuntime.async(function _callee$(_context) {
        while (1) switch (_context.prev = _context.next) {
            case 0:
                start = new Date();
                _context.next = 3;
                return regeneratorRuntime.awrap(next());

            case 3:
                ms = new Date() - start;

                console.log(ctx.method + ' ' + ctx.url + ' - ' + ms + 'ms');

            case 5:
            case 'end':
                return _context.stop();
        }
    }, null, this);
});

app.use(function _callee2(ctx, next) {
    return regeneratorRuntime.async(function _callee2$(_context2) {
        while (1) switch (_context2.prev = _context2.next) {
            case 0:
                console.log('sending res');
                ctx.body = 'hello world';
                _context2.next = 4;
                return regeneratorRuntime.awrap(next());

            case 4:
                console.log('res sent');

            case 5:
            case 'end':
                return _context2.stop();
        }
    }, null, this);
});

app.use(function _callee3(ctx, next) {
    return regeneratorRuntime.async(function _callee3$(_context3) {
        while (1) switch (_context3.prev = _context3.next) {
            case 0:
                console.log('doing nothing');
                ctx.body += '***';
                _context3.next = 4;
                return regeneratorRuntime.awrap(next());

            case 4:
            case 'end':
                return _context3.stop();
        }
    }, null, this);
});

console.log('listening on port: ' + port);
app.listen(3000);
