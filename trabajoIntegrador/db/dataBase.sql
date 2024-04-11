CREATE SCHEMA my_database;

USE my_database;

CREATE TABLE usuarios (
/* nombreColumna tipoDato Restricciones */
    id                  INT             UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    mail                VARCHAR(250)    NOT NULL,
    contrasenia         VARCHAR(250)    NOT NULL,
    fechaNacimiento     DATE            NOT NULL,
    numeroDocumento     INT             NOT NULL,
    foto                VARCHAR(250)    NOT NULL,
    createdAt           TIMESTAMP       DEFAULT CURRENT_TIMESTAMP ,
    updatedAt           TIMESTAMP       DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt           TIMESTAMP       DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

/*Tabla usuarios*/

INSERT INTO usuarios (id, mail, contrasenia, fechaNacimiento, numeroDocumento, foto, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 'cavallos@udesa.edu.ar', 'tefacha560', '2003-07-21', 44895188, 'fotoPerfilTefa.png', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id, mail, contrasenia, fechaNacimiento, numeroDocumento, foto, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 'planusmartinez@udesa.edu.ar', 'pepo123', '2004-12-08', 46293905, 'fotoPerfilPepo.png', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id, mail, contrasenia, fechaNacimiento, numeroDocumento, foto, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 'lionelmessi@gmail.com', 'messi123', '1987-06-24', 18122022, 'fotoPerfilMessi.png', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id, mail, contrasenia, fechaNacimiento, numeroDocumento, foto, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 'scaloni@gmail.com', 'scaloni123', '1978-05-16', 20122022, 'fotoPerfilScaloni.png', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id, mail, contrasenia, fechaNacimiento, numeroDocumento, foto, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 'idivinskimolina@udesa.edu.ar', 'ivan123', '2004-12-21', 46437670, 'fotoPerfilIvan.png', DEFAULT, DEFAULT, DEFAULT);