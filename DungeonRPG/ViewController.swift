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
        magiaAgro.text = String (conseguirMagia(stuff: heroe1.getStuff()))
        defensaAgro.text = String (conseguirDefensa(stuff: heroe1.getStuff()))
        luckyAgro.text = String (conseguirSuerte(stuff: heroe1.getStuff()))
    }


 
    
    
    
    
   
    //HEROES
    lazy var heroe1 = Heroe(nombre:"Agro", nivel: 0, experiencia: 0, monedas: 100, stuff: stuff1 )
    lazy var heroe2 = Heroe(nombre:"Archer", nivel: 0, experiencia: 0, monedas: 100, stuff: stuff2 )
    lazy var heroe3 = Heroe(nombre:"Thojen", nivel: 0, experiencia: 0, monedas: 100, stuff: stuff3 )
    
    
    
    //ARMAS
    let espadaFuego = Item(ataque: 30, defensa: 24, magia: 06, suerte: 2, imagen: UIImage(named: "sword2.png")!, tipo: "arma")
    let arco = Item(ataque: 20, defensa: 12, magia: 26, suerte: 22, imagen: UIImage(named: "arrow3.png")!, tipo: "arma")
    let cetroCristal = Item(ataque: 10, defensa: 15, magia: 30, suerte: 12, imagen: UIImage(named: "scepter2.png")!, tipo: "arma")
    
   //ESCUDOS
    let escudoRonyoso = Item(ataque: 5, defensa: 34, magia: 26, suerte: 1, imagen: UIImage(named: "shield4.png")!, tipo: "escudo")
    let escudoBarbaSanta = Item(ataque: 7, defensa: 42, magia: 0, suerte: 11, imagen: UIImage(named: "shield2.png")!, tipo: "escudo")
    let escudoTipico = Item(ataque: 2, defensa: 55, magia: 7, suerte: 8, imagen: UIImage(named: "shield.png")!, tipo: "escudo")
    
    //CASCOS
    let lataFrijoles = Item(ataque: 2, defensa: 50, magia: 0, suerte: 15, imagen: UIImage(named: "helmet2.png")!, tipo: "casco")
    let sombreroMago = Item(ataque: 0, defensa: 10, magia: 40, suerte: 15, imagen: UIImage(named: "helmet3.png")!, tipo: "casco")
    let sombreroBizantino = Item(ataque: 12, defensa: 40, magia: 0, suerte: 15, imagen: UIImage(named: "helmet5.png")!, tipo: "casco")
    let sombreroVikingo = Item(ataque: 20, defensa: 12, magia: 3, suerte: 15, imagen: UIImage(named: "helmet4.png")!, tipo: "casco")
    
    //BOTAS
    let botasCuero = Item(ataque: 3, defensa: 4, magia: 01, suerte: 2, imagen: UIImage(named: "boots.png")!, tipo: "botas")
    let botasHierro = Item(ataque: 13, defensa: 14, magia: 0, suerte: 0, imagen: UIImage(named: "boots2.png")!, tipo: "botas")
   
   //ARMADURAS
    let armaduraDragon = Item(ataque: 20, defensa: 80, magia: 7, suerte: 21, imagen: UIImage(named: "armour2.png")!, tipo: "armadura")
    let capaSucia = Item(ataque: 2, defensa: 3, magia: 37, suerte: 25, imagen: UIImage(named: "cap3.png")!, tipo: "armadura")
    let capaLimpia = Item(ataque: 2, defensa: 8, magia: 77, suerte: 33, imagen: UIImage(named: "cap2.png")!, tipo: "armadura")
    let armaduraExtranyoAgujero = Item(ataque: 15, defensa: 68, magia: 6, suerte: 20, imagen: UIImage(named: "armour.png")!, tipo: "armadura")
    
    //ANILLOS
    let anilloBoda = Item(ataque: 3, defensa: 4, magia: 56, suerte: 0, imagen: UIImage(named: "ring2.png")!, tipo: "anillo")
    let anilloPedrusco = Item(ataque: 5, defensa: 0, magia: 42, suerte: 10, imagen: UIImage(named: "ring.png")!, tipo: "anillo")
     let anilloRojo = Item(ataque: 7, defensa: 1, magia: 25, suerte: 5, imagen: UIImage(named: "ring2.png")!, tipo: "anillo")
    
    //STUFFS
    lazy var stuff1 = Stuff(arma: espadaFuego, escudo: escudoRonyoso, casco: sombreroVikingo, botas: botasHierro, armadura: armaduraDragon, anillo: anilloBoda);
    
    lazy var stuff2 = Stuff(arma: arco, escudo: escudoBarbaSanta, casco: lataFrijoles, botas: botasCuero, armadura: capaSucia, anillo: anilloPedrusco);
    
    lazy var stuff3 = Stuff(arma: cetroCristal, escudo: escudoTipico, casco: sombreroMago, botas: botasCuero, armadura: capaLimpia, anillo: anilloRojo);
    
    
    //FUNCIONES
    
    func  conseguirAtaque(stuff : Stuff)-> Int{
        var ataque : Int  = 0
        ataque = stuff.getArma().getAtaque()+stuff.getbotas().getAtaque()+stuff.getCasco().getAtaque()+stuff.getAnillo().getAtaque()+stuff.getEscudo().getAtaque()+stuff.getArmadura().getAtaque()
        return ataque
    }
    func  conseguirMagia(stuff : Stuff)-> Int{
        var magia : Int  = 0
        magia = stuff.getArma().getMagia()+stuff.getbotas().getMagia()+stuff.getCasco().getMagia()+stuff.getAnillo().getMagia()+stuff.getEscudo().getMagia()+stuff.getArmadura().getMagia()
        return magia
    }
    func  conseguirSuerte(stuff : Stuff)-> Int{
        var suerte : Int  = 0
         suerte = stuff.getArma().getSuerte()+stuff.getbotas().getSuerte()+stuff.getCasco().getSuerte()+stuff.getAnillo().getSuerte()+stuff.getEscudo().getSuerte()+stuff.getArmadura().getSuerte()
        return suerte
    }
    func  conseguirDefensa(stuff : Stuff)-> Int{
        var defensa : Int  = 0
        defensa = stuff.getArma().getDefensa()+stuff.getbotas().getDefensa()+stuff.getCasco().getDefensa()+stuff.getAnillo().getDefensa()+stuff.getEscudo().getDefensa()+stuff.getArmadura().getDefensa()
        return defensa
    }
}

