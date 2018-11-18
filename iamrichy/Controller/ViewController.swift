//
//  ViewController.swift
//  iamrichy
//
//  Created by superw on 18/11/2018.
//  Copyright © 2018 superw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //PROPIEDADES
    //hemos declarado esta variable arrastrando desde el Storyboard con ctrl pulsado: @IBOulet es una referencia interna para indicar a XCode que el fichero swift hace referencia a un objeto del Storyboard. weak es débil. Es una variable declarado como de tipo UILabel que es necesaria (!)
    //el PUNTO indicado en el número de línea indica que este objeto declarado en esta línea hace referencia al que apunta si lo seleccionamos
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var imageViewDiamante: UIImageView!
    @IBOutlet weak var buttonPulsame: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // METODOS
    //hemos creado una función arrastrando desde el Storyboard con ctrl pulsado: al conectar se crea una función @IBAction, el sender es el objeto quien ha llamdo a esta función
    @IBAction func ButtonPulsado(_ sender: UIButton) {
        //esto ocurrirá cuando se haya pulsado el botón
        //imprimimos en consola (no lo ve el usuario)
        print("Has pulsado el botón: Púlsame y serás Richy")
        //cambiamos el texto de la etiqueta labelTitulo para poder mostrar al usuario que ha pulsado el botón
        //aunque no es obligatorio en este caso, es útil para dejar claro a qué nos referiomos indicar en primer lugar la palabra reservada self para dejar claro que se trata de la etiqueta labelTitulo de mi propia clase (viewController)
        self.labelTitulo.text = "Ahora eres Richy :))"
        //también cambiamos el color del texto de la etiqueta
        self.labelTitulo.textColor = UIColor.green
        
        //cambiar la imágen del diamante al pulsar el botón
        self.imageViewDiamante.image = UIImage(named: "diamond-image")
        //cabiar el texto del propio botón (al ser pulsado)
        //self.buttonPulsame.title(for: .normal)
        
    }
    
}

