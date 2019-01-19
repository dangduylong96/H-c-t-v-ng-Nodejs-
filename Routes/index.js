var express = require('express');
var route = express.Router();

//User
route.use('/user', require('./user'));
//Trang chu login
route.get('/', (req, res) => {
	res.render('login');
	res.end();
})

module.exports = route;