module.exports = function (sequelize, dataTypes ) {
    let alias = "Comentario";
    let cols = {
        id: {
            autoIncrement : true,
            primaryKey : true,
            type : dataTypes.INTEGER
        },
        idUsuario: {
            type : dataTypes.INTERGER
        },
        idProducto: {
            type: dataTypes.INTERGER
        },
        comentario: {
            type: dataTypes.STRING
        },
  	}

    let config = {
        tableName: "comentarios",
        timestamps: false,
        underscored: false
    }
    
    let Comentario = sequelize.define(alias, cols, config);
    return Comentario;
}