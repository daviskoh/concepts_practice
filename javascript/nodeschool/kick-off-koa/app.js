'use strict';

const koa = require('koa');
const app = koa();

const port = process.argv[2];

app.use(function *() {
    // this - encapsulates req & res objcs into single obj
    this.body = 'hello koa';
});

app.listen(port);

