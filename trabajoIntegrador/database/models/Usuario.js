module.exports = function (sequelize, dataTypes ) {
    let alias = "Usuario";
    let cols = {
        id: {
            autoIncrement : true,
            primaryKey : true,
            type : dataTypes.INTEGER
        },
        mail: {
            type : dataTypes.STRING
        },
        contrasenia: {
            type: dataTypes.STRING
        },
        fechaNacimiento: {
            type: dataTypes.DATE
        },
        numeroDocumento: {
            type: dataTypes.INTERGER
        },
        foto: {
            type: dataTypes.STRING
        }
  	}

    let config = {
        tableName: "usuarios",
        timestamps: false,
        underscored: false
    }
    
    let Usuario = sequelize.define(alias, cols, config);
    return Usuario;
}