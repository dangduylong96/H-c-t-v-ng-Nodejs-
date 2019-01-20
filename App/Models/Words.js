var con = require('../../Config/connect');
var q = require('q');
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
	var sql = `SELECT * FROM word WHERE user_id=${userId}`;
	var excuteResult = await excute(sql)
	return excuteResult;
}

exports.getWord = async (wordId) => {
	var sql = `SELECT * FROM word WHERE id=${wordId}`;
	var excuteResult = await excute(sql)
	return excuteResult;
}