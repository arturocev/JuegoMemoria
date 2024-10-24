//
//  Juego.swift
//  JuegoMemoria
//
//  Created by user257493 on 10/23/24.
//

import Foundation
import UIKit

class Juego: UIViewController {
    //REFERENCIAS IMÁGENES
    @IBOutlet weak var imagen1UI: UIImageView!
    @IBOutlet weak var imagen2UI: UIImageView!
    @IBOutlet weak var imagen3UI: UIImageView!
    @IBOutlet weak var imagen4UI: UIImageView!
    
    //REFERENCIAS BOTONES
    @IBOutlet weak var botonImg1: UIButton!
    @IBOutlet weak var botonImg2: UIButton!
    @IBOutlet weak var botonImg3: UIButton!
    @IBOutlet weak var botonImg4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagen1UI.image = listaImagenes[0]
        imagen2UI.image = listaImagenes[1]
        imagen3UI.image = listaImagenes[2]
        imagen4UI.image = listaImagenes[3]
    }
    
    
    @IBAction func AdivinarImagen(_ sender: UIButton) {
        if idImagen1 == sender.tag || idImagen2 == sender.tag {
            puntuaciónTotal += 20
        } else {
            puntuaciónTotal -= 7
        }
    }
}
