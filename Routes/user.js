var express = require('express');
var route = express.Router();
//List route
route.get('/phuong-thuc-hoc', (req, res) => {
	res.write('Day la trang dang nhap vo');
	res.end();
})
module.exports = route;