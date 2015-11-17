const Koa = require('koa');
const app = new Koa();

const port = process.env.PORT || 3000;

app.use(ctx => {
    ctx.body = 'hello world';
});

console.log(`listening on port: ${port}`);
app.listen(3000);

