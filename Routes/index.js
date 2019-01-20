var express = require('express');
var route = express.Router();
var controller = require('../App/Controllers/Controller');
var checkUser = require('../App/Middleware/CheckLoginMiddleware');

//User
route.use('/user', checkUser.checkUser ,require('./user'));

//Dang nhap
route.route('/')
.get(controller.getLogin)
.post(controller.postLogin)

module.exports = route;