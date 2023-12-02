
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var session = require('express-session');

var flash = require('connect-flash');

var indexRouter = require('./routes/index');


var app = express();

// view engine setup=
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(session({
  secret : 'webslesson',
  cookie : {maxAge : 60000},
  saveUninitialized : false,
  resave : false
}));

app.use(flash());

app.use('/', indexRouter);

var port = '8000';
app.set('port', port);

//create web application to port 3000

app.listen(port, function(err){
    if (err) console.log("Error in server setup")
    console.log("Server listening on Port", port);
})
module.exports = app;
