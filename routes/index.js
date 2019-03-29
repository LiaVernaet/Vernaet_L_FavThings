var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  //get data from db and send it through the route to the views/index.hbs page and render that (including DB data)
  //res.render('index', { title: 'Express' });
  connect.query(`SELECT thing_title, thing_thumb FROM tbl_favThings`,(err, result) => {

   if (err){
     throw err;
     console.log(err);
   }else{
     console.log(result);
     res.render('index', { thing_thumb: result });
   }
  });
});

//get one hero's bio information

router.get('/:tbl_favThings', function(req, res, next) {
  //get data from db and send it through the route to the views/index.hbs page and render that (including DB data)
  //res.render('index', { title: 'Express' });
  connect.query(`SELECT * FROM tbl_favThings WHERE thing_title="${req.params.tbl_favThings}"`,(err, result) => {

   if (err){
     throw err;
     console.log(err);
   }else{
     console.log(result);
     res.render('bio', { bioData: result });
   }
  });
});

module.exports = router;
