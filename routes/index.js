var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  //get data from db and send it through the route to the views/index.hbs page and render that (including DB data)
  //res.render('index', { title: 'Express' });
  connect.query('SELECT name, avatar FROM hero',(err, result)=>{

   if (err){
     throw err;
     console.log(err);
   }else{
     console.log(result);
     res.render('index', { avatars: result });
   }
  });
});

module.exports = router;
