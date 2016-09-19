//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Jose Maria Fernandez on 19/9/16.
//  Copyright © 2016 Jose Maria Fernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pais: UILabel!
    @IBOutlet weak var hamburguesa: UILabel!
    
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    let coleccionDeHamburguesas = ColeccionDeHamburguesas()
    let coleccionDePaises = ColeccionDePaises()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        miHambuguesa()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func quieroHamburguesa(sender: AnyObject) {
        miHambuguesa()
    }
    
    func miHambuguesa() {
        pais.text = self.coleccionDePaises.obtenerPais()
        hamburguesa.text = self.coleccionDeHamburguesas.obtenerHamburguesa()
        view.backgroundColor = colores[ Int(arc4random()) % colores.count ]        
    }

}

