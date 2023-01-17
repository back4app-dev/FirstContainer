const express = require('express');

const app = express();

app.use('/', (req, res) => {
  res.send('hello, world 56!')
});

app.listen(3333, () => {
  console.log('listening at http://localhost:3333');
});
