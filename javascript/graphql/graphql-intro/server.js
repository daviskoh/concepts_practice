import express from 'express';

const app = express();
const PORT = 3000;

app.post('/graphql', (req, res) => {
  res.send('Hello!');
});

const server = app.listen(PORT, () => {
  const host = server.address().address;
  const port = server.address().port;

  console.log(`GraphQL listening at http://${host}:${port}`);
});
