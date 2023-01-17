const express = require('express');

const app = express();

app.use('/', (req, res) => {
  res.send("Hello World from Back4app Containers!");
});

app.listen(3333, () =>{
  console.log("Listening at https://localhost:3333");
});
