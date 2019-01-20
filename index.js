var express = require('express');
var app = express();
var session = require('express-session');
//Nodejs config
process.env.NODE_CONFIG_DIR = './Config';
var configs = require('config');
const port = configs.get('server.port');
//Setting template ejs
var bodyParse = require('body-parser');
app.use(bodyParse.urlencoded());
app.set('views', './App/Views');
app.set('view engine', 'ejs');
app.use('/static', express.static(__dirname + '/Assets'));
app.use(session({
	secret: configs.get('server.secretSession'),
	resave: false,
  saveUninitialized: true
}));

//Route
var routes = require(__dirname + '/Routes');
app.use(routes);

app.listen(port, () => {
	console.log('connect success!!');
})