//const productos = require('../db/dbProductos')
const express = require("express")

const productosController = {
    index: function(req,res){
        return res.render('index', {lista:'aca va la db productos'})
    },
    product: function(req, res){},

    add: function(req, res){},
    
    search: function(req, res){},
}


module.exports = productosController

