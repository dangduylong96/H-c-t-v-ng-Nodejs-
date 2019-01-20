var express = require('express');
var route = express.Router();
var controller = require('../App/Controllers/UserController');
//List route
route.get('/phuong-thuc-hoc', controller.listAction);
route.get('/danh-sach-tu', controller.listWord);
route.get('/them-tu', controller.addWord);
route.post('/them-tu1', controller.postAddWord);

module.exports = route;