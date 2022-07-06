var express = require('express');
var bodyParser = require('body-parser');
var load = require('express-load');

module.exports = function () {
    var app = express();
    app.use('/public', express.static('public'));
    app.set('view engine', 'ejs');
    app.use(bodyParser.urlencoded({ extended: true }));
    load('routes').then('infra').into(app);
    return app;
}