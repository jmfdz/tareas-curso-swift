//: Tarea semana 2 del curso Aprendiendo Swift

import UIKit

let rango = 0...100

for indice in rango {
    
    if indice % 5 == 0 {
        print ("#El número \(indice) Bingo!!!")
    }
    
    if indice % 2 == 0 {
        print ("#El número \(indice) par!!!")
    }else {
        print ("#El número \(indice) impar!!!")
    }
    
    if indice >= 30 && indice <= 40 {
        print ("#El número \(indice) Viva Swift!!!")
    }
}