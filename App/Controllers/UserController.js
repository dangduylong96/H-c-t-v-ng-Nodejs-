var formidable = require('formidable');
var fs = require('fs');
var randomstring = require("randomstring");
var userModel = require('../Models/Words');
var accountModel = require('../Models/Users');

exports.listAction = (req, res) => {
	res.render('users/index', {path: './list_action'});
	res.end();
}
exports.listWord = (req, res) => {
	var userId = req.session.userId;
	var listWords = userModel.listWords(userId);
	listWords.then(data => {
		var userName = accountModel.getUserName(userId);
		userName.then(nameData => {
			res.render('users/index', {path: './list_word', data: data, name: nameData[0].name});
			res.end();
		})
	})
	.catch(err => {
		console.log(err);
	})
	
}
exports.addWord = (req, res) => {
	res.render('users/index', {path: './add_word'});
}
exports.postAddWord = (req, res) => {
	var body = req.body;
	var userId = req.session.userId;
	//Upload img
	var form = new formidable.IncomingForm();
	var imgName = '';
	form.parse(req, function (err, fields, files) {
    var oldpath = files.img.path;
    if(files.img.name != ''){
    	imgName = randomstring.generate(10) + files.img.name
	    var newpath = __dirname + '/../../Assets/images/words/' + imgName;
	    fs.rename(oldpath, newpath, function (err) {
	      if (err) throw err;
	    });
    }
    //Insert
		userModel.insertWord(userId, fields, imgName);
		res.redirect('/user/danh-sach-tu');
	});
}

exports.editWord = (req, res) => {
	var wordId = req.query.id;
	userModel.getWord(wordId)
	.then(data => {
		data = data[0];
		res.render('users/index', {path: './edit_word', data: data});
	})
}

exports.postEditWord = (req, res) => {
	var wordId = req.query.id;
	var form = new formidable.IncomingForm();
	userModel.getWord(wordId)
	.then(data => {
		data = data[0];
		form.parse(req, function (err, fields, files) {
	    var oldpath = files.img.path;
	    var imgName = '';
	    if(files.img.name != ''){
	    	imgName = randomstring.generate(10) + files.img.name
		    var newpath = __dirname + '/../../Assets/images/words/' + imgName;
		    fs.rename(oldpath, newpath, function (err) {
		      if (err) throw err;
		    });
		    //Delete old file
	    	var currentPath = data.img;
	    	if(currentPath != ''){
		    	fs.unlink(__dirname + '/../../Assets/images/words/' + currentPath, function(){console.log('done')})
	    	}
	    }
	    userModel.editWord(wordId, fields, imgName);
			res.redirect('/user/danh-sach-tu');
		});
	})
}

exports.deleteWord = (req, res) => {
	var wordId = req.query.id;
	userModel.getWord(wordId)
	.then(data => {
		data = data[0];
  	userModel.deleteWord(wordId, data.img);
		res.redirect('/user/danh-sach-tu');
	})
}

exports.learnEnglishToViet = (req, res) => {
	var userId = req.session.userId;
	userModel.getWordForUser(userId)
	.then(data => {
		var arrayData = JSON.parse(JSON.stringify(data));
		res.render('users/index', {path: './learn_english_to_viet', arrayData: arrayData});
		res.end();
	})
}

exports.learnVietToEnglish = (req, res) => {
	var userId = req.session.userId;
	userModel.getWordForUser(userId)
	.then(data => {
		var arrayData = JSON.parse(JSON.stringify(data));
		res.render('users/index', {path: './learn_viet_to_english', arrayData: arrayData});
		res.end();
	})
}

exports.toggleStatusWord = (req, res) => {
	var userId = req.session.userId;
	var idWord = req.query.id_word;
  //toggle status
	userModel.toggleStatusWord(userId, idWord)
	.then(data => {
		var status = data[0].status;
		userModel.updateStatus(idWord, status)
		res.end();
	})
	
}
