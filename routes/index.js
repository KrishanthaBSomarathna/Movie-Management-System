var express = require('express');

var router = express.Router();

var database = require('../database');

router.get("/", function(request, response, next){

	var query = "SELECT * FROM movie ORDER BY id DESC";

	database.query(query, function(error, data){

		if(error)
		{
			throw error; 
		}
		else
		{
			response.render('index', {title:'All Movie', action:'list', fetchedData:data, message:request.flash('success')});
		}

	});

});

router.get("/add", function(request, response, next){
	var query = "SELECT * FROM movie ORDER BY id DESC";

	database.query(query, function(error, data){

		if(error)
		{
			throw error; 
		}
		else
		{
			response.render('index', {title:'Admin Panel', action:'add', fetchedData:data});
		}

	});
});

router.post("/add_data", function(request, response, next){

	var mid = request.body.mid;
	var title = request.body.title;
	var year = request.body.year;
	var runtime = request.body.runtime;
	var genre = request.body.genre;
	var director = request.body.director;
	var writer = request.body.writer;
	var actor = request.body.actor;
	var metascore = request.body.metascore;
	var rate = request.body.rate;

	var query = `INSERT INTO movie( mid, title, year, runtime, genre, director, writer, actor, metascore, rate) VALUES ("${mid}", "${title}", "${year}", "${runtime}", "${genre}", "${director}", "${writer}", "${actor}", "${metascore}", "${rate}")`;


	database.query(query, function(error, data){

		if(error)
		{
			throw error;
		}	
		else
		{
			request.flash('success', 'Student Added');
			response.render("index", {title:'Add Movie', action:'add'  });
			response.redirect('/add');
		}

	});

});

router.get('/edit/:id', function(request, response, next){

	var id = request.params.id;

	var query = `SELECT * FROM movie WHERE id = "${id}"`;

	database.query(query, function(error, data){

		response.render('index', {title: 'Edit MySQL Table Data', action:'edit', fetchedData:data[0]});

	});

});


router.post('/editing/:id', function(request, response, next){
	var id = request.params.id;
	var title = request.body.title;
	var mid = request.body.mid;
	var year = request.body.year;
	var runtime = request.body.runtime;
	var genre = request.body.genre;
	var director = request.body.director;
	var writer = request.body.writer;
	var actor = request.body.actor;
	var metascore = request.body.metascore;
	var rate = request.body.rate;

	
	var query = `UPDATE movie SET mid = "${mid}",title = "${title}", year = "${year}", runtime = "${runtime}", genre = "${genre}", director = "${director}", writer = "${writer}",actor = "${actor}",metascore = "${metascore}", rate = "${rate}" WHERE id = "${id}"`;
	database.query(query, function(error, data){

		if(error)
		{
			throw error;
		}
		else
		{
			request.flash('success', "Movie Data Updated !");
			response.redirect('/');
		}

	});

});


router.post('/search/:type', function(request, response, next){
	var type = request.params.type;
	var data = request.body.data;

	var query = `SELECT * FROM movie WHERE ${type} LIKE '%${data}%'`;

	database.query(query, function(error, data){

		if(error)
		{
			throw error;
		}
		else
		{
			response.render('search_data', {title: 'Searched Data', action:'search', fetchedData:data, testData:data, query:query, type:type});
		}

	});

});
router.get('/delete/:id', function(request, response, next){

	var id = request.params.id; 

	var query = `
	DELETE FROM movie WHERE id = "${id}"
	`;

	database.query(query, function(error, data){

		if(error)
		{
			throw error;
		}
		else
		{
			request.flash('success', 'Movie Data Deleted !');
			response.redirect("/add");
		}

	});

});

module.exports = router;