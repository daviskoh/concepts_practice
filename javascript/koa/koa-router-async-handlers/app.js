'use strict';

import Koa from 'koa';
import koaRouter from 'koa-router';

const app = new Koa();
const router = koaRouter();

app.use(async (ctx, next) => {
  const start = new Date;
  await next();
  const ms = new Date - start;
  console.log(`${ctx.method} ${ctx.url} - ${ms}ms`);
});

app.use(ctx => {
    ctx.body = 'Hello World';
});

router.get('/', (ctx, next) => {
  ctx.body += ' meow';
});

app.use(router.routes());

const port = process.env.HTTP_PORT || 3000;
console.log(`listening on port: ${port}`);
app.listen(port);

