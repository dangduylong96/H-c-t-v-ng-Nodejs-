var con = require('../../Config/connect');
var q = require('q');
var sha1 = require('sha1');
//Connect
con.connect(function(err) {
  if (err) throw err;
});

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

exports.getAll = async () => {
	var sql = "select * from users";
	var excuteResult = await excute(sql)
	.then(res => {
		return res;
	});
	return excuteResult;
}

exports.checkLogin = async (userName, password) => {
	userName = con.escape(userName);
	var sql = `select id, count(*) as count from users where user_name=${userName} and password='${sha1(password)}' GROUP BY id`;
	return await excute(sql);
}
