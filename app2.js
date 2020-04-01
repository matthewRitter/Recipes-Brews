//all of the packages and modules needed
//helmet and session for security, bodyParser for the POST request, path for handling URL
var mysql = require('mysql');
var express = require('express');
var bodyParser = require('body-parser');
var path = require('path');
var session=require('express-session');
var helmet=require('helmet')
var app2=express();
//connects to the database with login credentials
var con = mysql.createConnection({
  host: "localhost",
  user: "Leo",
  password: "NikolaJokic1!",
  database: "seschema"
});

//in express you have to instantiate the modules to use them
app2.use(bodyParser.urlencoded({extended : true}));
app2.use(express.static(path.join(__dirname, '/')));
app2.use(bodyParser.json());
app2.use(bodyParser.raw());
app2.use(bodyParser.text());
app2.use(helmet());

app2.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));
//get request from client, server sends html
app2.get('/',function(req,res){
  res.sendFile(path.join(__dirname+'/website.html'));
});

app2.get('/login.html',function(req,res){
  res.sendFile(path.join(__dirname+'/login.html'));
});

app2.get('/register.html',function(req,res){
  res.sendFile(path.join(__dirname+'/register.html'));
});

app2.get('/homepage.html',function(req,res){
  res.sendFile(path.join(__dirname+'/homepage.html'));
});

app2.listen(process.env.port || 3000);
console.log('Running at Port 3000');
//post request from client, data given to server side for storage
app2.post('/register.html',function(req,res){
    con.connect(function(err) {
    if (err) throw err;
    var sql="Insert into dbuser (Username,Pswd,Email) values ?";
    var values=[[req.body.username,req.body.password,req.body.username]];
      con.query(sql,[values], function (err, result) {
      if (err) throw err;
      req.session.loggedin = true;
      req.session.username = req.body.username;
      });
    });
     res.redirect('/homepage.html');
});

app2.post('/login.html', function(req, res) {
  con.connect(function(err){
    if (err) throw err;
    var values =[[req.body.username,req.body.password]]
    var sql= 'SELECT * FROM dbuser WHERE username = ? AND password = ?';
    if (values) {
      con.query(sql,[values], function(error, result) {
        if (values.length > 0) {
          req.session.loggedin = true;
          req.session.username=values[0];
          return res.redirect('/homepage.html');
        } else {
          res.send('Incorrect Username and/or Password!');
        }
        res.end();
      });
    } else {
      res.send('Please enter Username and Password!');
      res.end();
    }
  });
});

// app2.post('/homepage.html', function(req,res){
//   con.connect(function(err){
//     if (err) throw err;
//     var values =[[]]
//     var sql='select distinct recipe_name
//             from contain join recipe on Recipe_ID=RcpID
//             where recipe_name NOT IN(Select distinct recipe_name
//             from (contain join recipe on RcpID=Recipe_ID)
//             where ing_nm NOT IN (select distinct Ingr
//             from  (owns join dbuser on usrn=username)
//             where username =req.body.username))';
//     con.query(sql,[values],function(error,result){
//
//             })
//
//   })
// })
