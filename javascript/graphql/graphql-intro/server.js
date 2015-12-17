import express from 'express';
import schema from './schema';
import { graphql } from 'graphql';
import bodyParser from 'body-parser';

const app = express();
const PORT = 3000;

app.use(bodyParser.text({
  type: 'application/graphql'
}));

app.post('/graphql', (req, res) => {
  // TODO: use async/await
  graphql(schema, req.body)
    .then((result) => {
      res.send(JSON.stringify(result, null, 2));
    });
});

const server = app.listen(PORT, () => {
  const host = server.address().address;
  const port = server.address().port;

  console.log(`GraphQL listening at http://${host}:${port}`);
});
