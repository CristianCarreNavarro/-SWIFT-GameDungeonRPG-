//
//  ViewController.swift
//  DungeonRPG
//
//  Created by DAM on 28/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magiaAgro: UILabel!
    
    @IBOutlet weak var luckyAgro: UILabel!
    
    @IBOutlet weak var ataqueAgro: UILabel!
    
    @IBOutlet weak var defensaAgro: UILabel!
    

    @IBOutlet weak var ataqueArcher: UILabel!
    
    @IBOutlet weak var magiaArcher: UILabel!
    
    @IBOutlet weak var defensaArcher: UILabel!
    
    @IBOutlet weak var luckyArcher: UILabel!
    
    
    @IBOutlet weak var magiaThojen: UILabel!
   
    @IBOutlet weak var luckyThojen: UILabel!
    
    @IBOutlet weak var ataqueThojen: UILabel!
    
    @IBOutlet weak var defensaThojen: UILabel!
    
   // @IBOutlet weak var btonFight: UIButton!
  

    
    let espadaFuego = Item(ataque: 30, defensa: 24, magia: 06, suerte: 2, imagen: UIImage(named: "sword2.png")!, tipo: "espada")
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   btonFight.layer.cornerRadius = 10
       
        ataqueAgro.text = String (espadaFuego.getAtaque())
    }


    
}

