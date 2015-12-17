import express from 'express';
import schema from './schema';
import { graphql } from 'graphql';
import bodyParser from 'body-parser';

const app = express();
const PORT = 3000;

const wrap = fn => (...args) => fn(...args).catch(args[2]);

app.use(bodyParser.text({
  type: 'application/graphql'
}));

app.post('/graphql', wrap(async (req, res) => {
  // TODO: use async/await
  const result = await graphql(schema, req.body);

  res.send(JSON.stringify(result, null, 2));
}));

const server = app.listen(PORT, () => {
  const host = server.address().address;
  const port = server.address().port;

  console.log(`GraphQL listening at http://${host}:${port}`);
});
