'use strict';

import Koa from 'koa';
import Router from 'koa-router';

const app = new Koa();
const router = new Router();

router.use((ctx, next) => {
  console.log('middleware hit');
  ctx.body = 'Hello ';
  return next();
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

