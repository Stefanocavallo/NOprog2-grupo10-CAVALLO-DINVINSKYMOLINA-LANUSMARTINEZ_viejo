//const dbproductos = require('../db/dbProductos')
const express = require("express")

const productosController = {
    index: function(req,res){
        return res.render('index', {lista:'aca va la db productos'})
    },
    product: function(req, res){
        let id = req.params.idProducto;
        let respuesta;
        for (let i = 0; i < dbProductos.lista.length; i++) {
            if (id.toLowercase() === dbProductos.lista[i].nombre.toLowercase()) {
                respuesta = dbProductos.lista[i]
            }
        }
        if (respuesta.length === 0) {
            return res.send("El producto seleccionado no existe")
        }
        else {
            return res.render("product", {info: respuesta})
        }
    },

    add: function(req, res){},

    search: function(req, res){},
}


module.exports = productosController

