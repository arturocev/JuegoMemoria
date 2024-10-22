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
        let listaImagenes = [UIImage(named: "batido")]
        imagen1UI.image = listaImagenes[0]
    }

    
}

