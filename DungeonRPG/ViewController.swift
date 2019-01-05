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
    
    
    static var  arrayItems :Array<Any> = []
    
    static var  arrayMonstruos:Array<Any> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ViewController.arrayItems = [espadaFuego,arco,cetroCristal,escudoRonyoso,ViewController.escudoBarbaSanta,escudoTipico,lataFrijoles,sombreroMago,sombreroBizantino,sombreroVikingo,ViewController.botasCuero,botasHierro,armaduraDragon,capaSucia,capaLimpia,armaduraExtranyoAgujero,anilloBoda,anilloPedrusco,anilloRojo]

     
        let stuff1 = heroe1.getStuff()
        ataqueAgro.text = String (heroe1.conseguirAtaque(stuff : stuff1))
        magiaAgro.text = String (heroe1.conseguirMagia(stuff : stuff1))
        defensaAgro.text = String (heroe1.conseguirDefensa(stuff : stuff1))
        luckyAgro.text = String (heroe1.conseguirSuerte(stuff : stuff1))
        
        let stuff2 = heroe2.getStuff()
        ataqueArcher.text = String (heroe2.conseguirAtaque(stuff : stuff2))
        magiaArcher.text = String (heroe2.conseguirMagia(stuff : stuff2))
        defensaArcher.text = String (heroe2.conseguirDefensa(stuff : stuff2))
        luckyArcher.text = String (heroe2.conseguirSuerte(stuff : stuff2))
        
    
        let stuff3 = heroe3.getStuff()
        ataqueThojen.text = String (heroe3.conseguirAtaque(stuff : stuff3))
        magiaThojen.text = String (heroe3.conseguirMagia(stuff : stuff3))
        defensaThojen.text = String (heroe3.conseguirDefensa(stuff : stuff3))
        luckyThojen.text = String (heroe3.conseguirSuerte(stuff : stuff3))
      
     
    }


 

   
    //HEROES
    lazy var heroe1 = Heroe(nombre:"Agro", nivel: 0, experiencia: 0, monedas: 100, stuff: stuff1, imagen: "heroe1.png" )
    lazy var heroe2 = Heroe(nombre:"Archer", nivel: 0, experiencia: 0, monedas: 100, stuff: stuff2,imagen: "heroe2.png" )
    lazy var heroe3 = Heroe(nombre:"Thojen", nivel: 0, experiencia: 0, monedas: 100, stuff: stuff3,imagen: "heroe3.png" )
    
   
    //ARMAS
    let espadaFuego = Item(ataque: 30, defensa: 24, magia: 06, suerte: 2, imagen: UIImage(named: "sword2.png")!, tipo: "arma",coste: 100)
    let arco = Item(ataque: 20, defensa: 12, magia: 26, suerte: 22, imagen: UIImage(named: "arrow3.png")!, tipo: "arma",coste: 100)
    let cetroCristal = Item(ataque: 10, defensa: 15, magia: 30, suerte: 12, imagen: UIImage(named: "scepter2.png")!, tipo: "arma",coste: 100)
    
   //ESCUDOS
    let escudoRonyoso = Item(ataque: 5, defensa: 34, magia: 26, suerte: 1, imagen: UIImage(named: "shield4.png")!, tipo: "escudo",coste: 50)
    static var escudoBarbaSanta = Item(ataque: 7, defensa: 42, magia: 0, suerte: 11, imagen: UIImage(named: "shield2.png")!, tipo: "escudo",coste: 50)
    let escudoTipico = Item(ataque: 2, defensa: 55, magia: 7, suerte: 8, imagen: UIImage(named: "shield.png")!, tipo: "escudo",coste: 50)
    
    //CASCOS
    let lataFrijoles = Item(ataque: 2, defensa: 50, magia: 0, suerte: 15, imagen: UIImage(named: "helmet2.png")!, tipo: "casco",coste: 50)
    let sombreroMago = Item(ataque: 0, defensa: 10, magia: 40, suerte: 15, imagen: UIImage(named: "helmet3.png")!, tipo: "casco",coste: 50)
    let sombreroBizantino = Item(ataque: 12, defensa: 40, magia: 0, suerte: 15, imagen: UIImage(named: "helmet5.png")!, tipo: "casco",coste: 40)
    let sombreroVikingo = Item(ataque: 20, defensa: 12, magia: 3, suerte: 15, imagen: UIImage(named: "helmet4.png")!, tipo: "casco",coste: 40)
    
    //BOTAS
    static var botasCuero = Item(ataque: 3, defensa: 4, magia: 01, suerte: 2, imagen: UIImage(named: "boots.png")!, tipo: "botas",coste: 40)
    let botasHierro = Item(ataque: 13, defensa: 14, magia: 0, suerte: 0, imagen: UIImage(named: "boots2.png")!, tipo: "botas",coste: 30)
   
   //ARMADURAS
    let armaduraDragon = Item(ataque: 20, defensa: 80, magia: 7, suerte: 21, imagen: UIImage(named: "armour2.png")!, tipo: "armadura",coste: 30)
    let capaSucia = Item(ataque: 2, defensa: 3, magia: 37, suerte: 25, imagen: UIImage(named: "cap3.png")!, tipo: "armadura",coste: 30)
    let capaLimpia = Item(ataque: 2, defensa: 8, magia: 77, suerte: 33, imagen: UIImage(named: "cap2.png")!, tipo: "armadura",coste: 30)
    let armaduraExtranyoAgujero = Item(ataque: 15, defensa: 68, magia: 6, suerte: 20, imagen: UIImage(named: "armour.png")!, tipo: "armadura",coste: 40)
    
    //ANILLOS
    let anilloBoda = Item(ataque: 3, defensa: 4, magia: 56, suerte: 0, imagen: UIImage(named: "necklace.png")!, tipo: "anillo",coste: 45)
    let anilloPedrusco = Item(ataque: 5, defensa: 0, magia: 42, suerte: 10, imagen: UIImage(named: "ring.png")!, tipo: "anillo",coste: 35)
    let anilloRojo = Item(ataque: 7, defensa: 1, magia: 25, suerte: 5, imagen: UIImage(named: "ring2.png")!, tipo: "anillo",coste: 20)
    
 
    
    
    //STUFFS
    lazy var stuff1 = Stuff(arma: espadaFuego, escudo: escudoRonyoso, casco: sombreroVikingo, botas: botasHierro, armadura: armaduraDragon, anillo: anilloBoda);
    
    lazy var stuff2 = Stuff(arma: arco, escudo: ViewController.escudoBarbaSanta, casco: lataFrijoles, botas: ViewController.botasCuero, armadura: capaSucia, anillo: anilloPedrusco);
    
    lazy var stuff3 = Stuff(arma: cetroCristal, escudo: escudoTipico, casco: sombreroMago, botas: ViewController.botasCuero, armadura: capaLimpia, anillo: anilloRojo);
    
    
    //FUNCIONES
    
  
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segundoView = segue.destination as! ViewController2
           if (segue.identifier == "secue1" ) {
             segundoView.heroeElegido = heroe1
           }else if(segue.identifier == "secue3" ) {
            segundoView.heroeElegido = heroe2
           }else if(segue.identifier == "secue2" ) {
            segundoView.heroeElegido = heroe3
        }
    }
}

