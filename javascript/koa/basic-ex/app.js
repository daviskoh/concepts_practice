'use strict';

require('babel-polyfill');

const Koa = require('koa');
// honestly just waiting for:
// https://github.com/alexmingoia/koa-router/pull/202
const Router = require('koa-66');
const app = new Koa();

const router = new Router();

const port = process.env.PORT || 3000;

router.use(async function (ctx, next) {
    const start = new Date;
    await next();
    const ms = new Date - start;
    console.log(`${ctx.method} ${ctx.url} - ${ms}ms`);
});

router.use(async function (ctx, next) {
    console.log('sending res');
    ctx.body = 'hello world';
    await next();
    console.log('res sent');
});

router.use(async function (ctx, next) {
    console.log('doing nothing');
    ctx.body += '***';
    await next();
});

router.get('/meow', async function(ctx) {
    console.log('meow');
    ctx.body += '^^^^^^^^';
});

app.use(router.routes());
console.log(`listening on port: ${port}`);
app.listen(3000);

