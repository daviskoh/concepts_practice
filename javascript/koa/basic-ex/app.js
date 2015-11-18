'use strict';

require('babel-polyfill');

let Koa = require('koa');
// honestly just waiting for:
// https://github.com/alexmingoia/koa-router/pull/202
let Router = require('koa-66');
let app = new Koa();

let router = new Router();

let port = process.env.PORT || 3000;

router.use(async (ctx, next) => {
    let start = new Date;
    await next();
    let ms = new Date - start;
    console.log(`${ctx.method} ${ctx.url} - ${ms}ms`);
});

router.use(async (ctx, next) => {
    console.log('sending res');
    ctx.body = 'hello world';
    await next();
    console.log('res sent');
});

router.use(async (ctx, next) => {
    console.log('doing nothing');
    ctx.body += '***';
    await next();
});

router.get('/meow', async (ctx) => {
    console.log('meow');
    ctx.body += '^^^^^^^^';
});

app.use(router.routes());
console.log(`listening on port: ${port}`);
app.listen(3000);

