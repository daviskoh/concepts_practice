const Koa = require('koa');
const co = require('co');
const app = new Koa();

const port = process.env.PORT || 3000;

app.use(co.wrap(function *(ctx, next) {
    const start = new Date;
    yield next();
    const ms = new Date - start;
    console.log(`${ctx.method} ${ctx.url} - ${ms}ms`);
}));

app.use(co.wrap(function *(ctx, next) {
    console.log('sending res');
    ctx.body = 'hello world';
    yield next();
    console.log('res sent');
}));

app.use(co.wrap(function *(ctx, next) {
    console.log('doing nothing');
    ctx.body += '***';
    yield next();
}));

console.log(`listening on port: ${port}`);
app.listen(3000);

