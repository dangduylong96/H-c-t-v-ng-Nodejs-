var express = require('express');
var route = express.Router();
var controller = require('../App/Controllers/UserController');
//List route
route.get('/phuong-thuc-hoc', controller.listAction);
route.get('/danh-sach-tu', controller.listWord);
route.get('/them-tu', controller.addWord);
route.post('/them-tu', controller.postAddWord);
route.get('/sua-tu', controller.editWord);
route.post('/sua-tu', controller.postEditWord);
route.get('/xoa-tu', controller.deleteWord);
route.get('/chuyen-trang-thai', controller.toggleStatusWord);
//Luyen
route.get('/luyen-anh-viet', controller.learnEnglishToViet);
route.get('/luyen-viet-anh', controller.learnVietToEnglish);



module.exports = route;