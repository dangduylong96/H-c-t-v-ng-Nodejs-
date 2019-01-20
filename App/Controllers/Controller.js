var usersModel = require('../Models/Users');
var session = require('express-session');
var sha1 = require('sha1');
process.env.NODE_CONFIG_DIR = './Config';
var configs = require('config');

exports.getLogin =  (req, res) => {
	var userId = req.session.userId;
	var userToken = req.session.userToken;
	var privateKey = configs.get('server.secretSession');
	var token = sha1(userId + privateKey);
	if(token == userToken) res.redirect('/user/phuong-thuc-hoc');
	res.render('login');
	res.end();
}

exports.postLogin =  (req, res) => {
	var body = req.body;
	var userName = body.user_name;
	var password = body.pass;
	//Login
	var checkLogin = usersModel.checkLogin(userName, password);
	checkLogin.then(check => {
		if(check.length == 0){
			res.render('login', {err: 'loi'});
		}else{
			req.session.userId = check[0].id;
			var privateKey = configs.get('server.secretSession');
			req.session.userToken = sha1(check[0].id + privateKey);
			res.redirect('/user/phuong-thuc-hoc');
		}
	})
	.catch(err => {
		console.log(err);
	})
}