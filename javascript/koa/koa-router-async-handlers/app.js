'use strict';

import Koa from 'koa';
import Router from 'koa-router';

const app = new Koa();
const router = new Router();

router.use(async (ctx, next) => {
  console.log('1st middleware hit');
  ctx.body = 'Hello ';
  await next();
  console.log('1st middleware fin');
});

router.use((ctx, next) => {
  console.log('last middleware');
  next();
});

router
  .get('/hello/:name', (ctx, next) => {
    console.log('route hit');
    ctx.body += ctx.name || 'world';
  });

app.use(router.routes());

const port = process.env.HTTP_PORT || 3000;
console.log(`listening on port: ${port}`);
app.listen(port);

