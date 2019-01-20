var formidable = require('formidable');
var randomstring = require("randomstring");

exports.listAction = (req, res) => {
	res.render('users/index', {path: './list_action'});
	res.end();
}
exports.listWord = (req, res) => {
	res.render('users/index', {path: './list_word'});
	res.end();
}
exports.addWord = (req, res) => {
	res.render('users/index', {path: './add_word'});
}
exports.postAddWord = (req, res) => {
	console.log('asdasd');
	var body = req.body;
	var englishWord = body.english_word;
	var vietnamWord = body.vietnam_word;
	var vietnamSubWord = body.vietnam_sub_word;
	var status = body.status;
	//Upload img
	var form = new formidable.IncomingForm();
	console.log('bbb');
	form.parse(req, function (err, fields, files) {
		console.log('aa');
    var oldpath = files.img.path;
    var newpath = __dirname + '/Assets/images/words/' + files.img.name;
    fs.rename(oldpath, newpath, function (err) {
      if (err) throw err;
      res.write('File uploaded and moved!');
      res.end();
    });
	});
	// console.log(img);
	// if(img != 'undefined'){
	// 	res.write('bbb');
	// }
	// res.write('aaa');
	res.end();
	// if(locals.img){
	// 	console.log('a');
	// }
}