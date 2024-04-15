var datos = require("../db/dbUsuarios")
let express = require("express")

const profileController = {
    profile: function(req,res) {
        res.render("profile", {Usuario: datos.usuarios[0] }
        
        )
    },

    login : function(req, res){},

    register: function(req, res){},
    
    edit: function(req, res){},
}; 

module.exports = profileController