var express = require('express');
var router = express.Router();

let profilesController = require('../controllers/profileController');

router.get('/login', profilesController.login);

router.get('/register', profilesController.register);

router.get('/profile/:usuario', profilesController.profile);

router.get('/profileEdit', profilesController.edit);

module.exports = router;