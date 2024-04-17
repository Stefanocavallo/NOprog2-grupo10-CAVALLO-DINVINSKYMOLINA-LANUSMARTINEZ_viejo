var datos = require("../db/dbUsuarios")
let express = require("express")

const profileController = {
    profile: function(req,res) {
        res.render("profile", {Usuario: datos.usuarios[0] }
        
        )
    },

    login : function(req, res){
        return res.render('login',{})
    },

    register: function(req, res){
        return res.render('register',{})
    },
    
    edit: function(req, res){
        return res.render('profileEdit',{})
    },
}; 

module.exports = profileController