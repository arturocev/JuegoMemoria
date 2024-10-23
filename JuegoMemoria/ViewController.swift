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
        
        var numeroRandom = 0
        for i in 1...2 {
            numeroRandom = insertarImagenes(listaImagenes: listaImagenes)
            if imagen1UI.image != nil {
                imagen2UI.image = listaImagenes[numeroRandom]
                idImagen2 = numeroRandom
            } else {
                imagen1UI.image = listaImagenes[numeroRandom]
                idImagen1 = numeroRandom
            }
        }
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


