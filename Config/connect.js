var mysql = require('mysql');

var con = mysql.createConnection({
  database: 'hoc_tu_vung',
  host: 'localhost',
  user: 'root',
  password: 'bongma00'
});

module.exports = con;