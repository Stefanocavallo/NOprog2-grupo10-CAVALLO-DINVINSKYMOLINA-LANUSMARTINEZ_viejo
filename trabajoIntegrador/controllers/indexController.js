var datos = require("../db/dataBase.sql")
const indexController = {
    index: function(req,res) {
        res.render("index", {title: "Express"}
        )
    }
};

module.exportexport = indexController