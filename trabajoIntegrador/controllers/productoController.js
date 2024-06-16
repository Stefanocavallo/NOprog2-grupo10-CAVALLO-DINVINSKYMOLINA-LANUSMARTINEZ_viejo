const db = require('../database/models')
const express = require("express")

const productosController = {
    index: function(req,res){
        return res.render("index", {info: db.productos})
    },
    product: function(req, res){
        let id = req.params.idProduct;
        let respuesta;
        for (let i = 0; i < db.productos.length; i++) {
            if (id.toLowerCase() === db.productos[i].nombreProducto.toLowerCase()) {
                respuesta = db.productos[i]
            }
        }
        if (!respuesta) {
            return res.send("El vehículo seleccionado no está disponible")
        }
        else {
            return res.render("product", {info: respuesta})
        }
    },

    add: function(req, res){
        return res.render('productAdd',{})
    },

    search: function(req, res){
        { 
            let buscado= req.query.search
            let rta=[]
            for (let i = 0; i < db.productos.length; i++) {
                if (db.productos[i].nombreProducto.toLowerCase().includes(buscado.toLowerCase()) ) {
                    rta.push(db.productos[i])}}
            return res.render('searchResults',{info:rta})
                }
        }
}


module.exports = productosController

