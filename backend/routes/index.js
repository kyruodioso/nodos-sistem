var express = require('express');
var router = express.Router();

const sensorsController=require('../controllers/sensorsController');

/* GET home page. */
router.get('/', sensorsController.dht);

module.exports = router;
