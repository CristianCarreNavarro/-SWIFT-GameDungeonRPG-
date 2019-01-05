//
//  ViewController6.swift
//  DungeonRPG
//
//  Created by CristianK on 05/01/2019.
//  Copyright © 2019 DAM. All rights reserved.
//
import UIKit


class ViewController6: UIViewController {
    
    var enemigoFight : Monstruo!
    var heroeFight : Heroe!

    @IBOutlet weak var imagenEnemigo: UIImageView!
    
    @IBOutlet weak var imagenHeroe: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        imagenHeroe.image = UIImage(named: heroeFight.getImagen())
        imagenEnemigo.image = UIImage(named: enemigoFight.getImagen())
}
}
