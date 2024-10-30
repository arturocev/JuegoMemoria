//
//  ViewController.swift
//  JuegoMemoria
//
//  Created by user257493 on 10/22/24.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var imagen1UI: UIImageView!
    @IBOutlet weak var imagen2UI: UIImageView!
    @IBOutlet weak var botonJugarUI: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var numeroRandom = insertarImagenes(listaImagenes: listaImagenes)
        var numeroRandom2 = insertarImagenes(listaImagenes: listaImagenes)
        
        imagen1UI.image = listaImagenes[numeroRandom]
        idImagen1 = numeroRandom
        
        while numeroRandom == numeroRandom2 {
            numeroRandom2 = Int.random(in: 0...3)
        }
        
        imagen2UI.image = listaImagenes[numeroRandom2]
        idImagen2 = numeroRandom2
    }
    
    @IBAction func jugarPulsado(_ sender: UIButton) {
         comenzarJuego()
    }
    
    
    func insertarImagenes(listaImagenes: [UIImage?]) -> Int
    {
        var numeroRandom = Int.random(in: 0...3)
        return numeroRandom
    }
    
    func comenzarJuego() {
        performSegue(withIdentifier: "Juego", sender: nil)
    }
}


