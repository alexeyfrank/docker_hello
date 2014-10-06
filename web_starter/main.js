var http = require("http");
var exec = require("child_process").exec;


http.createServer(function(req, res) {
  res.end("Hello world!");
}).listen(8080);
