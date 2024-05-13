module.exports = function (sequelize, dataTypes ) {
    let alias = "Producto";
    let cols = {
        id: {
            autoIncrement : true,
            primaryKey : true,
            type : dataTypes.INTEGER
        },
        idUsuario: {
            type: dataTypes.INTERGER
        },
        fotoProducto: {
            type : dataTypes.STRING
        },
        nombreProduct: {
            type: dataTypes.STRING
        },
        Descripcion: {
            type: dataTypes.STRING
        },
  	}

    let config = {
        tableName: "productos",
        timestamps: false,
        underscored: false
    }
    
    let Producto = sequelize.define(alias, cols, config);
    return Producto;
}