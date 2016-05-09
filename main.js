var express = require('express');
var app = express();

console.log("PASSWORD", process.env.PASSWORD);
app.get('/', function(req, res) {
  console.log("Query*", req.query);
  var password = req.query.password;
  if (!process.env.PASSWORD || password===process.env.PASSWORD){
    res.sendFile(__dirname+"/"+'index.html');
  }
  else{
    res.sendFile(__dirname+"/"+'wrong-pw.html');
  }
});

app.get('/blockops.css', function(req, res) {
  res.sendFile(__dirname+"/"+'blockops.css');
});

var port = process.env.PORT || 5000;
console.log("starting server on Port:", port);

app.listen(port);