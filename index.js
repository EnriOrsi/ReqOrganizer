var app = require('./config/express')();
var http = require('http');
var server = http.createServer(app);
server.listen (570, function(){
    console.log("It's working!!");
});