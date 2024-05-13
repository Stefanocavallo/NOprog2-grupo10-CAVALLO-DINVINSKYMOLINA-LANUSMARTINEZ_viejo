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

CREATE TABLE productos (
/* 	nombreColumna 		tipoDato 		Restricciones */
    id 					INT 			UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    idUsuario			INT				UNSIGNED, 
    fotoProducto 		VARCHAR(250) 	NOT NULL,
    nombreProduct 		VARCHAR(250) 	NOT NULL,
    Descripcion 		VARCHAR(250) 	NOT NULL,
    createdAt 			TIMESTAMP 		DEFAULT CURRENT_TIMESTAMP,
	updatedAt 			TIMESTAMP 		DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt			TIMESTAMP		DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (idUsuario) REFERENCES usuarios(id)
);

CREATE TABLE comentarios (
/*  nombreColumna       tipoDato        Restricciones */
    id                  INT             UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    idUsuario           INT             UNSIGNED,
    idProducto          INT             UNSIGNED,
    comentario          VARCHAR(500)    NOT NULL,
    createdAt           TIMESTAMP       DEFAULT CURRENT_TIMESTAMP,
    updatedAt           TIMESTAMP       DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt           TIMESTAMP       DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (idUsuario) REFERENCES usuarios(id),
    FOREIGN KEY (idProducto) REFERENCES productos(id)
);

/*Tabla usuarios*/

INSERT INTO usuarios (id, mail, contrasenia, fechaNacimiento, numeroDocumento, foto, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 'cavallos@udesa.edu.ar', 'tefacha560', '2003-07-21', 44895188, 'fotoPerfilTefa.jpg', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id, mail, contrasenia, fechaNacimiento, numeroDocumento, foto, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 'planusmartinez@udesa.edu.ar', 'pepo123', '2004-12-08', 46293905, 'fotoPerfilPepo.jpg', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id, mail, contrasenia, fechaNacimiento, numeroDocumento, foto, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 'lionelmessi@gmail.com', 'messi123', '1987-06-24', 18122022, 'fotoPerfilMessi.jpg', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id, mail, contrasenia, fechaNacimiento, numeroDocumento, foto, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 'scaloni@gmail.com', 'scaloni123', '1978-05-16', 20122022, 'fotoPerfilScaloni.jpg', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id, mail, contrasenia, fechaNacimiento, numeroDocumento, foto, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 'idivinskimolina@udesa.edu.ar', 'ivan123', '2004-12-21', 46437670, 'fotoPerfilIvan.jpg', DEFAULT, DEFAULT, DEFAULT);

/*Tabla productos*/

INSERT INTO productos (id, idUsuario, fotoProducto, nombreProduct, Descripcion, createdAt, updatedAt, deletedAt) 
VALUES 			(DEFAULT, 1, 'fotoProducto1.png', 'iphone15', 'Ultimo modelo celular de Apple, el iPhone 15 viene con la Dynamic Island, cámara gran angular de 48 MP, entrada USB-C y un resistente vidrio con infusión de color en un diseño de aluminio o titanio.', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id, idUsuario, fotoProducto, nombreProduct, Descripcion, createdAt, updatedAt, deletedAt) 
VALUES 			(DEFAULT, 1, 'fotoProducto2.png', 'iphone14', 'El iPhone 14 viene con el sistema de dos cámaras más impresionante en un Iphone 14, para que tomes fotos espectaculares con mucha o poca luz. Y te da más tranquilidad gracias a una funcionalidad de seguridad que salva vidas.', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id, idUsuario, fotoProducto, nombreProduct, Descripcion, createdAt, updatedAt, deletedAt) 
VALUES 			(DEFAULT, 2, 'fotoProducto3.png', 'Volskwagen Golf', 'Color: Azul, Combustible: Nafta, Motor: 1.4, Puertas: 5, Sensor: Si, Transmision: automática', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id, idUsuario, fotoProducto, nombreProduct, Descripcion, createdAt, updatedAt, deletedAt)
VALUES 			(DEFAULT, 2, 'fotoProducto4.png', 'Volskwagen Polo', 'Color: Azul, Combustible: Nafta, Motor: 1.4, Puertas: 5, Sensor: Si, Transmision: automática', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id, idUsuario, fotoProducto, nombreProduct, Descripcion, createdAt, updatedAt, deletedAt) 
VALUES 			(DEFAULT, 3, 'fotoProducto3.png', 'Pelota YPF Messi', 'Pelota YPF Messi 3 estrellas. Este verano disfruta jugando al futbol con tus amigos con esta nueva pelota de Messi.', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id, idUsuario, fotoProducto, nombreProduct, Descripcion, createdAt, updatedAt, deletedAt) 
VALUES 			(DEFAULT, 3, 'fotoProducto6.png', 'Pelota Adidas Al Rihla', 'Exterior 70 % poliuretano, 20 % poliéster reciclado, 10 % viscosa. Exterior sin costuras con uniones termoselladas. Logo estampado de la Copa Mundial. Certificación Fifa. Color: White', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id, idUsuario, fotoProducto, nombreProduct, Descripcion, createdAt, updatedAt, deletedAt)
VALUES			(DEFAULT, 4, 'fotoProducto7.png', 'Chomba Fútbol adidas Argentina', 'Seguí a Argentina hasta la cima del fútbol mundial. Esta Chomba Fútbol adidas Argentina Tiro 24 Competition Hombre te brinda comodidad con su tejido suave, puños y cuello acanalado. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id, idUsuario, fotoProducto, nombreProduct, Descripcion, createdAt, updatedAt, deletedAt)
VALUES 			(DEFAULT, 4, 'fotoProducto8.png', 'Campera Lakers', 'Campera de los Angeles Lakers de dudosa procedencia comprada fuera del estadio ', DEFAULT, DEFAULT, DEFAULT);  

INSERT INTO productos (id, idUsuario, fotoProducto, nombreProduct, Descripcion, createdAt, updatedAt, deletedAt)
VALUES 			(DEFAULT, 5, 'fotoProducto9.png',  ' Vans Knu Skool ', 'Zapatillas vans knu skool black.w talle 45 AR 32.5 cm largo de pie de la plantilla. ', DEFAULT, DEFAULT, DEFAULT);    

INSERT INTO productos (id, idUsuario, fotoProducto, nombreProduct, Descripcion, createdAt, updatedAt, deletedAt)
VALUES 			(DEFAULT, 5, 'fotoProducto10.png', 'Audi A1', 'El nuevo Audi A1 Sportback redefine el segmento compacto. Su llamativo diseño deportivo caracteriza a la segunda generación del exitoso auto compacto.', DEFAULT, DEFAULT, DEFAULT);

UPDATE productos
SET fotoProducto = 'fotoProducto4.png'
WHERE id = 4;

UPDATE productos
SET fotoProducto = 'fotoProducto5.png'
WHERE id = 5;

/*Tabla comentarios*/

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 1, 1,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 1, 2,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 1, 3,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 2, 1,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 2, 2,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 2, 3,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 3, 1,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 3, 2,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 3, 3,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 4, 4,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 4, 5,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 4, 6,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 5, 4,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);  

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 5, 5,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 5, 6,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 1, 4,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);  

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 2, 5,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);  

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 2, 6,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);  

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 3, 7,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);  

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 3, 8,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 3, 9,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 3, 10,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 4, 7,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 4, 8,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 4, 9,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 4, 10,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 5, 7,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 5, 8,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 5, 9,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT);

INSERT INTO comentarios (id, idUsuario, idProducto, comentario, createdAt, updatedAt, deletedAt)
VALUES (DEFAULT, 5, 10,   'Lorem ipsum dolor sit amet consectetur adipiscing elit felis, eros odio sapien mi sociosqu habitasse curae non, nibh dui turpis suscipit malesuada sodales hac. Turpis odio massa lacus penatibus ante velit varius posuere, ullamcorper lectus sollicitudin platea morbi pharetra blandit tincidunt vel, et molestie non interdum arcu cursus est. Vivamus feugiat aliquam facilisis nisi primis consequat lectus phasellus fusce ultricies accumsan, proin quam fringilla bibendum posuere habitasse aptent. ', DEFAULT, DEFAULT, DEFAULT); 