const dataP = {
    productos:[
        {
            idProducto: 1,
            idUsuario: 1,
            fotoProducto: 'fotoProducto1.png',
            nombreProducto: 'Renault Megane RS',
            descripcion: 'Color: Blanco, Combustible: Nafta, Motor: 2.0 turbo, Puertas: 5, Transmision: Manual',
            comentariosProd1: [
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
                    user: 'Ivan Divinski',
                    texto: 'Que mecha! Cuantos burros? Permutas por Golf TSI?',
                }
            ]
        },
        {
            idProducto: 2,
            idUsuario: 1,
            fotoProducto: 'fotoProducto2.png',
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
            idProducto: 3,
            idUsuario: 2,
            fotoProducto: 'fotoProducto3.png',
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
            idProducto: 4,
            idUsuario: 2,
            fotoProducto: 'fotoProducto4.png',
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
                    user: 'Ivan Divinski',
                    texto: 'Ufff, muy linda y ademas hermoso andar, nunca te va a dejar a pata, daría lo que sea por una.',
                }
            ] 
        },
        {
            idProducto: 5,
            idUsuario: 3,
            fotoProducto: 'fotoProducto5.png',
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
                    user: 'Ivan Divinski',
                    texto: 'Bellisima, un tanque igual, pero siendo tuya la compraria hoy mismo.',
                }
            ] 
        },
        {
            idProducto: 6,
            idUsuario: 3,
            fotoProducto: 'fotoProducto6.png',
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
            idProducto: 7,
            idUsuario: 4,
            fotoProducto: 'fotoProducto7.png',
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
            idProducto: 8,
            idUsuario: 4,
            fotoProducto: 'fotoProducto8.png',
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
                    user: 'Ivan Divinski',
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
            idProducto: 9,
            idUsuario: 5,
            fotoProducto: 'fotoProducto9.png',
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
            idProducto: 10,
            idUsuario: 5,
            fotoProducto: 'fotoProducto10.png',
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
