let express = require('express');

let dataP = {
    productos:[
        {
            estado: 1,
            idProducto: 1,
            vendedor: 'Tefa123',
            fotoProducto: '../public/images/products/MeganeRS.jpeg',
            nombreProducto: 'Renault Megane RS',
            descripcion: 'Color: Blanco, Combustible: Nafta, Motor: 2.0 turbo, Puertas: 5, Transmision: Manual',
            comentariosProd2: [
                {
                    fotoUsuario: 'fotoPerfilPepo.png',
                    user: 'Pedro Lanus',
                    texto: 'Cuantos CV? Aceptas permuta? Te ofrezco un Peugeot 308 Gti + diferencia.',
                },
                {
                    fotoUsuario: 'fotoPerfilMessi.png',
                    user: 'Lionel Messi',
                    texto: 'Hay posibilidades de mandarlo a Miami? Anto anda necesitando un nuevo auto, avisame y arreglamos pa.',
                },
                {
                    fotoUsuario: 'fotoPerfilIvan.png',
                    user: 'Ivan Divinsky',
                    texto: 'Que mecha! Cuantos burros? Permutas por Golf TSI?',
                }
            ]
        },
        {
            estado: 2,
            idProducto: 2,
            vendedor: 'Tefa123',
            fotoProducto: '../public/images/products/SanderoRS.jpeg',
            nombreProducto: 'Renault Sandero RS',
            descripcion: 'Color: Negro, Combustible: Nafta, Motor: 2.0, Puertas: 5, Transmision: Manual',
            comentariosProd2: [
                {
                    fotoUsuario: 'fotoPerfilScaloni.png',
                    user: 'Lionel Scaloni',
                    texto: 'Nunca más me compro uno de estos, no se lo recomiendo a nadie...',
                },
                {
                    fotoUsuario: 'fotoPerfilMessi.png',
                    user: 'Lionel Messi',
                    texto: 'Linda nave para ir por Paris, potente, ruidosa y furiosa.',
                },
                {
                    fotoUsuario: 'fotoPerfilPepo.png',
                    user: 'Pedro Lanus',
                    texto: 'La verdad que nunca me subiria a uno de estos, no me gustan nada...',
                }
            ]
        },
        {
            estado: 1,
            idProducto: 3,
            vendedor: 'Pepo123',
            fotoProducto: '../public/images/products/308GTI.jpeg',
            nombreProducto: 'Peugeot 308 Gti',
            descripcion: 'Color: Azul, Combustible: Nafta, Motor: 1.6, Puertas: 5, Transmision: Manual',
            comentariosProd2: [
                {
                    fotoUsuario: 'fotoPerfilTefa.png',
                    user: 'Stéfano Cavallo',
                    texto: 'Divino, lastima el motor THPum... Pero de todas formas, humilla a la competencia',
                },
                {
                    fotoUsuario: 'fotoPerfilMessi.png',
                    user: 'Lionel Messi',
                    texto: 'Linda nave para ir por Paris, potente, ruidosa y furiosa.',
                },
                {
                    fotoUsuario: 'fotoPerfilIvan.png',
                    user: 'Pedro Lanus',
                    texto: 'La verdad que nunca me subiria a uno de estos, no me gustan nada...',
                }
            ] 
        },
        {
            estado: 2,
            idProducto: 4,
            vendedor: 'Pepo123',
            fotoProducto: '../public/images/products/VwAmarok.jpeg',
            nombreProducto: 'Volskwagen Amarok',
            descripcion: 'Color: Gris, Combustible: Nafta, Motor: 3.0 , Puertas: 4, Transmision: Automatica',
            comentariosProd2: [
                {
                    fotoUsuario: 'fotoPerfilTefa.png',
                    user: 'Stéfano Cavallo',
                    texto: 'Hermoso el andar, pero visualmente nefasta...',
                },
                {
                    fotoUsuario: 'fotoPerfilMessi.png',
                    user: 'Lionel Messi',
                    texto: 'Muy linda nave, tenía una en Rosario, volveria a tener una.',
                },
                {
                    fotoUsuario: 'fotoPerfilIvan.png',
                    user: 'Ivan Divinsky',
                    texto: 'Ufff, muy linda y ademas hermoso andar, nunca te va a dejar a pata, daría lo que sea por una.',
                }
            ] 
        },
        {
            estado: 1,
            idProducto: 5,
            vendedor: 'Messi123',
            fotoProducto: '../public/images/products/MGLC300.jpeg',
            nombreProducto: 'Merces-Benz GLC 300',
            descripcion: 'Color: Gris, Combustible: Nafta, Motor: 2.0 , Puertas: 5, Transmision: Automatica',
            comentariosProd2: [
                {
                    fotoUsuario: 'fotoPerfilPepo.png',
                    user: 'Pedro Lanus',
                    texto: 'Na pero como vas a publicar esto?? Estas loco, hay chicos en esta pagina, jajajaja! Hermosa!',
                },
                {
                    fotoUsuario: 'fotoPerfilScaloni.png',
                    user: 'Lionel Scaloni',
                    texto: 'Para Lio, como vas a vender esa hermosura?? Regalasela a alguno del plantel jajaja.',
                },
                {
                    fotoUsuario: 'fotoPerfilIvan.png',
                    user: 'Ivan Divinsky',
                    texto: 'Bellisima, un tanque igual, pero siendo tuya la compraria hoy mismo.',
                }
            ] 
        },
        {
            estado: 2,
            idProducto: 6,
            vendedor: 'Messi123',
            fotoProducto: '../public/images/products/MBA250.jpeg',
            nombreProducto: 'Merces-Benz A250',
            descripcion: 'Color: Gris oscuro, Combustible: Nafta, Motor: 2.0 , Puertas: 5, Transmision: Automatica',
            comentariosProd2: [
                {
                    fotoUsuario: 'fotoPerfilTefa.png',
                    user: 'Stefano Cavallo',
                    texto: 'Muy lindo auto, no me decido igual entre este o un serie 1...',
                },
                {
                    fotoUsuario: 'fotoPerfilScaloni.png',
                    user: 'Lionel Scaloni',
                    texto: 'En el mercho, escuchando Fercho, jajajaja. Vendeselo a De Paul a ver si recupera a Tini!',
                },
                {
                    fotoUsuario: 'fotoPerfilPepo.png',
                    user: 'Pedro Lanus',
                    texto: 'Andaba buscando uno de estos hace tiempo, y viendo que es tuyo Lio, no dudo en comprarlo!',
                }
            ] 
        },
        {
            estado: 1,
            idProducto: 7,
            vendedor: 'Scaloni123',
            fotoProducto: '../public/images/products/MicroScaloneta.webp',
            nombreProducto: 'Micro Scaloneta',
            descripcion: 'Color: Blanco, Combustible: Nafta, Motor: 2.0 , Puertas: 2, Transmision: Automatica',
            comentariosProd2: [
                {
                    fotoUsuario: 'fotoPerfilTefa.png',
                    user: 'Stefano Cavallo',
                    texto: 'Jajajajaj, ya mismo la compro!.',
                },
                {
                    fotoUsuario: 'fotoPerfilMessi.png',
                    user: 'Lionel Messi',
                    texto: 'Estas loco!',
                },
                {
                    fotoUsuario: 'fotoPerfilPepo.png',
                    user: 'Pedro Lanus',
                    texto: 'Jujuuuuuu una locura!!!',
                }
            ] 
        },
        {
            estado: 2,
            idProducto: 8,
            vendedor: 'Scaloni123',
            fotoProducto: '../public/images/products/Fiat500.webp',
            nombreProducto: 'Fiat 500',
            descripcion: 'Color: Azul, Combustible: Nafta, Motor: 1.4 , Puertas: 3, Transmision: Automatica',
            comentariosProd2: [
                {
                    fotoUsuario: 'fotoPerfilTefa.png',
                    user: 'Stefano Cavallo',
                    texto: 'Una c4g4d4 con ruedas....',
                },
                {
                    fotoUsuario: 'fotoPerfilIvan.png',
                    user: 'Ivan Divinsky',
                    texto: 'Como vas a vender esta cosa... Guardala y nunca más la saques del garage.',
                },
                {
                    fotoUsuario: 'fotoPerfilPepo.png',
                    user: 'Pedro Lanus',
                    texto: 'Horrible es poco...',
                }
            ] 
        },
        {
            estado: 1,
            idProducto: 9,
            vendedor: 'Ivan123',
            fotoProducto: '../public/images/products/GolfTSI.jpeg',
            nombreProducto: 'Golf TSI Highline',
            descripcion: 'Color: Azul, Combustible: Nafta, Motor: 1.6 , Puertas: 5, Transmision: Automatica',
            comentariosProd2: [
                {
                    fotoUsuario: 'fotoPerfilTefa.png',
                    user: 'Stefano Cavallo',
                    texto: 'Como vas a vender LA mecha??',
                },
                {
                    fotoUsuario: 'fotoPerfilMessi.png',
                    user: 'Lionel Messi',
                    texto: 'Buen primer auto, se lo pienso comprar a Ciro.',
                },
                {
                    fotoUsuario: 'fotoPerfilPepo.png',
                    user: 'Pedro Lanus',
                    texto: 'Ni loco te compro este auto sabiendo como lo trataste... jajajaja',
                }
            ]  
        },
        {
            estado: 2,
            idProducto: 10,
            vendedor: 'Ivan123',
            fotoProducto: '../public/images/products/AudiA4.jpeg',
            nombreProducto: 'Audi A4',
            descripcion: 'Color: Gris, Combustible: Nafta, Motor: 2.0 turbo , Puertas: 5, Transmision: Automatica',
            comentariosProd2: [
                {
                    fotoUsuario: 'fotoPerfilScaloni.png',
                    user: 'Lionel Scaloni',
                    texto: 'mmmm dudosa venta, tanto tiempo tiene este auto que es un fosil...',
                },
                {
                    fotoUsuario: 'fotoPerfilMessi.png',
                    user: 'Lionel Messi',
                    texto: 'Hermosa bestia, aunque los respuestos... Mamita.',
                },
                {
                    fotoUsuario: 'fotoPerfilPepo.png',
                    user: 'Pedro Lanus',
                    texto: 'Esa perdida de aceite... No lo vendes mas!',
                }
            ]
        },
    ]
}


module.exports = dataP
