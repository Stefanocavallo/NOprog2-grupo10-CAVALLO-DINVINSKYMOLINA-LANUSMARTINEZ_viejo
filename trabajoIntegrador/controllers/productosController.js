const productos = require('../db/productos')

const productosController = {
    index: function(req,res){
        return res.render('index', {lista:productos.lista})
    }
}