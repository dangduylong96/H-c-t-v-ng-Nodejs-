var con = require('../../Config/connect');
var q = require('q');
var fs = require('fs');
function excute(sql){
	if(sql){
		var defer = q.defer();
		var query = con.query(sql, function(err, result){
			if(err){
				console.log(err);
				defer.reject(err);
			} 
			defer.resolve(result);
		})
		return defer.promise;
	}
	return false;
}

exports.insertWord = async (userId, body, imgName) => {
	var englishWord = con.escape(body.english_word);
	var vietnamWord = con.escape(body.vietnam_word);
	var vietnamSubWord = con.escape(body.vietnam_sub_word);
	var status = con.escape(body.status);
	var sql = `INSERT INTO word (user_id, english_word, vietnam_word, vietname_sub_word, img, status) VALUES (${userId}, ${englishWord}, ${vietnamWord}, ${vietnamSubWord}, '${imgName}', ${status})`;
	var excuteResult = await excute(sql)
	.then(res => {
		return res;
	});
	return excuteResult;
}

exports.listWords = async (userId) => {
	var sql = `SELECT * FROM word WHERE user_id=${userId} ORDER BY id DESC`;
	var excuteResult = await excute(sql)
	return excuteResult;
}

exports.getWord = async (wordId) => {
	var sql = `SELECT * FROM word WHERE id=${wordId}`;
	var excuteResult = await excute(sql)
	return excuteResult;
}

exports.editWord = async (wordId, body, imgName) => {
	var englishWord = con.escape(body.english_word);
	var vietnamWord = con.escape(body.vietnam_word);
	var vietnamSubWord = con.escape(body.vietnam_sub_word);
	var status = con.escape(body.status);
	if(imgName != ''){
		var sql = `UPDATE word SET english_word = ${englishWord}, vietnam_word = ${vietnamWord}, vietname_sub_word = ${vietnamSubWord}, status = ${status}, img = '${imgName}' WHERE id = ${wordId}`;

	}else{
		var sql = `UPDATE word SET english_word = ${englishWord}, vietnam_word = ${vietnamWord}, vietname_sub_word = ${vietnamSubWord}, status = ${status} WHERE id = ${wordId}`;

	}
	var excuteResult = await excute(sql)
	.then(res => {
		return res;
	});
	return excuteResult;
}
exports.deleteWord = async (wordId, imgName) => {
	var sql = `DELETE FROM word WHERE id = ${wordId}`;
	if(imgName != ''){
		fs.unlink(__dirname + '/../../Assets/images/words/' + imgName, function(){console.log('done')})
	}
	var excuteResult = await excute(sql)
	.then(res => {
		return res;
	});
	return excuteResult;
}
exports.getWordForUser = async (userId) => {
	var sql = `SELECT * FROM word WHERE user_id=${userId} AND status=1`;
	var excuteResult = await excute(sql)
	return excuteResult;
}
