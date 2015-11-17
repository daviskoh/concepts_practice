'use strict';

require('babel-polyfill');

var Koa = require('koa');
var Router = require('koa-66');
var app = new Koa();

var router = new Router();

var port = process.env.PORT || 3000;

router.use(function _callee(ctx, next) {
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

router.use(function _callee2(ctx, next) {
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

router.use(function _callee3(ctx, next) {
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

router.get('/meow', function _callee4(ctx) {
    return regeneratorRuntime.async(function _callee4$(_context4) {
        while (1) switch (_context4.prev = _context4.next) {
            case 0:
                console.log('meow');
                ctx.body += '^^^^^^^^';

            case 2:
            case 'end':
                return _context4.stop();
        }
    }, null, this);
});

app.use(router.routes());
console.log('listening on port: ' + port);
app.listen(3000);
