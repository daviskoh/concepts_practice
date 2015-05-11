var koa = require('koa'),
    app = koa();

app.use(function *() {
    this.body = 'hello koa';
});

app.listen(process.argv[2]);

