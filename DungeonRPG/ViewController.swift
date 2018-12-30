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
  

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   btonFight.layer.cornerRadius = 10
        
       
        
        ataqueAgro.text = String (conseguirAtaque(stuff: heroe1.getStuff()))
        
        
        
    }


 
    
    
    
    
   
    
    lazy var heroe1 = Heroe(nombre:"Agro", nivel: 0, experiencia: 0, monedas: 100, stuff: stuff1 )
    
    
    
    
    let espadaFuego = Item(ataque: 30, defensa: 24, magia: 06, suerte: 2, imagen: UIImage(named: "sword2.png")!, tipo: "espada")
    let escudoRonyoso = Item(ataque: 5, defensa: 34, magia: 0, suerte: 1, imagen: UIImage(named: "shield4.png")!, tipo: "escudo")
    let sombrero = Item(ataque: 2, defensa: 50, magia: 0, suerte: 15, imagen: UIImage(named: "helmet2.png")!, tipo: "casco")
    let botasCuero = Item(ataque: 3, defensa: 4, magia: 01, suerte: 2, imagen: UIImage(named: "boots.png")!, tipo: "botas")
    let armaduraDragon = Item(ataque: 20, defensa: 80, magia: 07, suerte: 21, imagen: UIImage(named: "armour2.png")!, tipo: "armadura")
    let anilloBoda = Item(ataque: 3, defensa: 4, magia: 56, suerte: 0, imagen: UIImage(named: "ring2.png")!, tipo: "anillo")
    
    
    lazy var stuff1 = Stuff(arma: espadaFuego, escudo: escudoRonyoso, casco: sombrero, botas: botasCuero, armadura: armaduraDragon, anillo: anilloBoda);
    
    
    func  conseguirAtaque(stuff : Stuff)-> Int{
        var ataque : Int  = 0
        ataque = stuff.getArma().getAtaque()+stuff.getbotas().getAtaque()+stuff.getCasco().getAtaque()+stuff.getAnillo().getAtaque()+stuff.getEscudo().getAtaque()+stuff.getArmadura().getAtaque()
        return ataque
    }
    
}

