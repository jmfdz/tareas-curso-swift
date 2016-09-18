//: Tarea semana 4 de curso Swift

import UIKit

/// Enumeración con los tipos de velocidades
enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120

    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
    
}

/// Clase que representa un auto que tiene diversas velocidades
class Auto {
    
    /// Variable que contiene el valor de la velocidad del Auto
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
        let actual = self.velocidad
        
        switch self.velocidad {
        case .Apagado : self.velocidad = .VelocidadBaja
        case .VelocidadBaja : self.velocidad = .VelocidadMedia
        case .VelocidadMedia : self.velocidad = .VelocidadAlta
        case .VelocidadAlta : self.velocidad = .VelocidadMedia
        }
        
        return (actual.rawValue,"\(actual)")
    }
    
}

var auto = Auto()

for indice in 1...20 {
    print( auto.cambioDeVelocidad() )
}