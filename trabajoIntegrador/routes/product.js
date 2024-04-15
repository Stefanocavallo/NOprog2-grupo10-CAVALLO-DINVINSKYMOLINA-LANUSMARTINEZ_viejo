var express = require('express');
var router = express.Router();

let productsController = require('../controllers/productController');

router.get('/product/:idProduct', productsController.product);

router.get('/productAdd', productsController.add);

router.get('/search', productsController.search);

module.exports = router;