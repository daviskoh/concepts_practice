'use strict';

const Koa = require('koa');
const co = require('co');
const app = new Koa();
require('babel-polyfill');

const port = process.env.PORT || 3000;

app.use(async function (ctx, next) {
    const start = new Date;
    await next();
    const ms = new Date - start;
    console.log(`${ctx.method} ${ctx.url} - ${ms}ms`);
});

app.use(async function (ctx, next) {
    console.log('sending res');
    ctx.body = 'hello world';
    await next();
    console.log('res sent');
});

app.use(async function (ctx, next) {
    console.log('doing nothing');
    ctx.body += '***';
    await next();
});

console.log(`listening on port: ${port}`);
app.listen(3000);

