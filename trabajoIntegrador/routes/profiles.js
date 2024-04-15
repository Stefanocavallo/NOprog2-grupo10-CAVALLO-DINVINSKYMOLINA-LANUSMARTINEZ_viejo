var express = require('express');
var router = express.Router();

let profilesController = require('../controllers/profileController');

router.get('/login', profilesController.login);

router.get('/register', profilesController.register);

module.exports = router;
