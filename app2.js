var mysql = require('mysql');
var express = require('express');
var bodyParser = require('body-parser');
var path = require('path');
var app2=express();

var con = mysql.createConnection({
  host: "localhost",
  user: "Leo",
  password: "NikolaJokic1!",
  database: "seschema"
});

app2.use(bodyParser.urlencoded({extended : true}));
app2.use(express.static(path.join(__dirname, '/')));

app2.get('/',function(req,res){
  res.sendFile(path.join(__dirname+'/website.html'));
});

app2.get('/login.html',function(req,res){
  res.sendFile(path.join(__dirname+'/login.html'));
});

app2.post('/login.html',function(req,res){
  var username= req.body;
  var password=req.body;
  //var email=req.body.email;
  res.write('All good');
  res.write(req.body);
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  //
  // con.query("Insert into dbuser (usrn) values(username,password)",[username,password], function (err, result) {
  //   if (err) throw err;
  //   console.log("Result: records inserted" + result);
  });
