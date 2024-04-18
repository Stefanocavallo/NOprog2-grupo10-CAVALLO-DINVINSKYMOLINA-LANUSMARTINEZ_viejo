const dbProductos = require('../db/dbProductos')
const express = require("express")

const productosController = {
    index: function(req,res){
        return res.render('index', {lista:dbProductos})
    },
    product: function(req, res){
        let id = req.params.idProduct;
        let respuesta;
        for (let i = 0; i < dbProductos.productos.length; i++) {
            if (id.toLowerCase() === dbProductos.productos[i].nombreProducto.toLowerCase()) {
                respuesta = dbProductos.productos[i]
            }
        }
        if (!respuesta) {
            return res.send("El producto seleccionado no está disponible")
        }
        else {
            return res.render("product", {info: respuesta})
        }
    },

    add: function(req, res){
        return res.render('productAdd',{})
    },

    search: function(req, res){
        return res.render('searchResults', {})
    },
}


module.exports = productosController

