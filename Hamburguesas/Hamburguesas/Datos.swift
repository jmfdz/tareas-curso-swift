//
//  Datos.swift
//  Hamburguesas
//
//  Created by Jose Maria Fernandez on 19/9/16.
//  Copyright © 2016 Jose Maria Fernandez. All rights reserved.
//

import Foundation

class ColeccionDePaises {
    
    let paises = ["España","México","Estados Unidos","Italia","Francia","Portugal","Bélgica","Paises bajos","Marruecos","Egipto","Turquía","Reino Unido","Alemania","Paraguay","Argelia","China","Japon","Perú","Australia","Etipia","Suecia","Islandia","Argentina","Brasil","Chile"]
    
    func obtenerPais() -> String {
        let numeroAleatorio = Int( arc4random()) % paises.count
        return paises[numeroAleatorio]
    }
    
}

class ColeccionDeHamburguesas {
    
    let hamburguesas = ["Big Mac","Mac Pollo","Wopper","Double Wopper","Kangu Burguer","Potro Burguer","Cocodrile Burguer","Chesse Burguer","Max Burguer","Pizza Burguer","Pizza Burguer","Burguer total","Hamburguesa Simple","Hamburguesa con Bacom","Long Chicken","Kristie Chicken","Krastie Burguer","Big Big Mac","Hamburguesa campera","Hamburesa Kebap","Hamburgesa de gambas","Hamburesa mortal"]
    
    func obtenerHamburguesa() -> String {
        let numeroAleatorio = Int( arc4random()) % hamburguesas.count
        return hamburguesas[numeroAleatorio]
    }
    
}