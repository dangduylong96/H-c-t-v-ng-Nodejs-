process.env.NODE_CONFIG_DIR = './Config';
var configs = require('config');
var sha1 = require('sha1');

exports.checkUser = (req, res, next) => {
	// var userId = req.session.userId;
	// var userToken = req.session.userToken;
	// var privateKey = configs.get('server.secretSession');
	// var token = sha1(userId + privateKey);
	// if(token != userToken) res.redirect('/');
	next();
};