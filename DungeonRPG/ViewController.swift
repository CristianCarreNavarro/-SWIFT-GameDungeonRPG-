//
//  ViewController.swift
//  DungeonRPG
//
//  Created by DAM on 28/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit


var  arrayItems : Array<Item> = []
var  listaMonstruos : Array<Monstruo> = []

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
    
    @IBOutlet weak var heart1Heroe1: UIImageView!
    @IBOutlet weak var heart2Heroe1: UIImageView!
    @IBOutlet weak var heart3Heroe1: UIImageView!
    @IBOutlet weak var heart4Heroe1: UIImageView!
    
    @IBOutlet weak var heart1Heroe2: UIImageView!
    @IBOutlet weak var heart2Heroe2: UIImageView!
    @IBOutlet weak var heart3Heroe2: UIImageView!
    @IBOutlet weak var heart4Heroe2: UIImageView!
    
    @IBOutlet weak var heart1Heroe3: UIImageView!
    @IBOutlet weak var heart2Heroe3: UIImageView!
    @IBOutlet weak var heart3Heroe3: UIImageView!
    @IBOutlet weak var heart4Heroe3: UIImageView!
    
    

    
  


   
    //HEROES
    lazy var heroeAgro = Heroe(nombre:"Agro", nivel: 0, experiencia: 0, monedas: 100, stuff: stuff1, imagen: "heroe1.png", vida:4 )
    lazy var heroeArcher = Heroe(nombre:"Archer", nivel: 0, experiencia: 0, monedas: 100, stuff: stuff2,imagen: "heroe2.png",vida:3 )
    lazy var heroeThojen = Heroe(nombre:"Thojen", nivel: 0, experiencia: 0, monedas: 100, stuff: stuff3,imagen: "heroe3.png",vida:2 )
    
   
    //ARMAS
    let espadaFuego = Item(ataque: 1, defensa: 24, magia: 06, suerte: 2, imagen: UIImage(named: "sword2.png")!, tipo: "arma",coste: 100)
    let arco = Item(ataque: 2, defensa: 12, magia: 26, suerte: 22, imagen: UIImage(named: "arrow3.png")!, tipo: "arma",coste: 100)
    let cetroCristal = Item(ataque: 3, defensa: 15, magia: 30, suerte: 12, imagen: UIImage(named: "scepter2.png")!, tipo: "arma",coste: 100)
    
   //ESCUDOS
    let escudoRonyoso = Item(ataque: 4, defensa: 34, magia: 26, suerte: 1, imagen: UIImage(named: "shield4.png")!, tipo: "escudo",coste: 50)
    let escudoBarbaSanta = Item(ataque: 5, defensa: 42, magia: 0, suerte: 11, imagen: UIImage(named: "shield2.png")!, tipo: "escudo",coste: 50)
    let escudoTipico = Item(ataque: 6, defensa: 55, magia: 7, suerte: 8, imagen: UIImage(named: "shield.png")!, tipo: "escudo",coste: 50)
    
    //CASCOS
    let lataFrijoles = Item(ataque: 7, defensa: 50, magia: 0, suerte: 15, imagen: UIImage(named: "helmet2.png")!, tipo: "casco",coste: 50)
    let sombreroMago = Item(ataque: 8, defensa: 10, magia: 40, suerte: 15, imagen: UIImage(named: "helmet3.png")!, tipo: "casco",coste: 50)
    let sombreroBizantino = Item(ataque: 9, defensa: 40, magia: 0, suerte: 15, imagen: UIImage(named: "helmet5.png")!, tipo: "casco",coste: 40)
    let sombreroVikingo = Item(ataque: 10, defensa: 12, magia: 3, suerte: 15, imagen: UIImage(named: "helmet4.png")!, tipo: "casco",coste: 40)
    
    //BOTAS
    let botasCuero = Item(ataque: 11, defensa: 4, magia: 01, suerte: 2, imagen: UIImage(named: "boots.png")!, tipo: "botas",coste: 40)
    let botasHierro = Item(ataque: 12, defensa: 14, magia: 0, suerte: 0, imagen: UIImage(named: "boots2.png")!, tipo: "botas",coste: 30)
   
   //ARMADURAS
    let armaduraDragon = Item(ataque: 13, defensa: 80, magia: 7, suerte: 21, imagen: UIImage(named: "armour2.png")!, tipo: "armadura",coste: 30)
    let capaSucia = Item(ataque: 2, defensa: 3, magia: 37, suerte: 25, imagen: UIImage(named: "cap3.png")!, tipo: "armadura",coste: 30)
    let capaLimpia = Item(ataque: 14, defensa: 8, magia: 77, suerte: 33, imagen: UIImage(named: "cap2.png")!, tipo: "armadura",coste: 30)
    let armaduraExtranyoAgujero = Item(ataque: 15, defensa: 68, magia: 6, suerte: 20, imagen: UIImage(named: "armour.png")!, tipo: "armadura",coste: 40)
    
    //ANILLOS
    let anilloBoda = Item(ataque: 16, defensa: 4, magia: 56, suerte: 0, imagen: UIImage(named: "necklace.png")!, tipo: "anillo",coste: 45)
    let anilloPedrusco = Item(ataque: 17, defensa: 0, magia: 42, suerte: 10, imagen: UIImage(named: "ring.png")!, tipo: "anillo",coste: 35)
    let anilloRojo = Item(ataque: 18, defensa: 1, magia: 25, suerte: 5, imagen: UIImage(named: "ring2.png")!, tipo: "anillo",coste: 20)
    
 
    
    
    //STUFFS
    lazy var stuff1 = Stuff(arma: espadaFuego, escudo: escudoRonyoso, casco: sombreroVikingo, botas: botasHierro, armadura: armaduraDragon, anillo: anilloBoda)
    
    lazy var stuff2 = Stuff(arma: arco, escudo: escudoBarbaSanta, casco: lataFrijoles, botas:botasCuero, armadura: capaSucia, anillo: anilloPedrusco)
    
    lazy var stuff3 = Stuff(arma: cetroCristal, escudo: escudoTipico, casco: sombreroMago, botas: botasCuero, armadura: capaLimpia, anillo: anilloRojo)
    
    
    //FUNCIONES
 
    override func viewDidLoad() {
        super.viewDidLoad()
        iniciarMonstruos()
        arrayItems = [espadaFuego,arco,cetroCristal,escudoRonyoso,escudoBarbaSanta,escudoTipico,lataFrijoles,sombreroMago,sombreroBizantino,sombreroVikingo,botasCuero,botasHierro,armaduraDragon,capaSucia,capaLimpia,armaduraExtranyoAgujero,anilloBoda,anilloPedrusco,anilloRojo]
        
        
        let stuff1 = heroeAgro.getStuff()
        ataqueAgro.text = String (heroeAgro.conseguirAtaque(stuff : stuff1))
        magiaAgro.text = String (heroeAgro.conseguirMagia(stuff : stuff1))
        defensaAgro.text = String (heroeAgro.conseguirDefensa(stuff : stuff1))
        luckyAgro.text = String (heroeAgro.conseguirSuerte(stuff : stuff1))
        
        let stuff2 = heroeArcher.getStuff()
        ataqueArcher.text = String (heroeArcher.conseguirAtaque(stuff : stuff2))
        magiaArcher.text = String (heroeArcher.conseguirMagia(stuff : stuff2))
        defensaArcher.text = String (heroeArcher.conseguirDefensa(stuff : stuff2))
        luckyArcher.text = String (heroeArcher.conseguirSuerte(stuff : stuff2))
        
        
        let stuff3 = heroeThojen.getStuff()
        ataqueThojen.text = String (heroeThojen.conseguirAtaque(stuff : stuff3))
        magiaThojen.text = String (heroeThojen.conseguirMagia(stuff : stuff3))
        defensaThojen.text = String (heroeThojen.conseguirDefensa(stuff : stuff3))
        luckyThojen.text = String (heroeThojen.conseguirSuerte(stuff : stuff3))
        
        heroeAgro.mostrarCorazones(numerovidas: heroeAgro.getVida(),corazon1: heart1Heroe1,corazon2: heart2Heroe1,corazon3: heart3Heroe1,corazon4: heart4Heroe1)
        heroeArcher.mostrarCorazones(numerovidas: heroeArcher.getVida(),corazon1: heart1Heroe2,corazon2: heart2Heroe2,corazon3: heart3Heroe2,corazon4: heart4Heroe2)
        heroeThojen.mostrarCorazones(numerovidas: heroeThojen.getVida(),corazon1: heart1Heroe3,corazon2: heart2Heroe3,corazon3: heart3Heroe3,corazon4: heart4Heroe3)
    }
    
    
    @IBAction func clickHero(_ sender: UIButton) {
        
        switch(sender.tag) {
        case 0:
            heroeELegido = heroeAgro
            break
        case 1:
            heroeELegido = heroeArcher
            break
        case 2:
            heroeELegido = heroeThojen
            break
        default:
            print("error")
        }
        
    }
    
  

    func iniciarMonstruos(){
        
        //MONSTRUOS
        listaMonstruos = [Monstruo(nombreMonstruo:"Dildok usadok", nivelMonstruo: 2, vidaMonstruo: 1, ataqueMonstruo: 10, defensaMonstruo: 45, premioMonstruo: 20, experienciaMonstruo: 50, imagen: "monster8.png"), Monstruo(nombreMonstruo:"Rana otraVez", nivelMonstruo: 3, vidaMonstruo: 1, ataqueMonstruo: 12, defensaMonstruo: 48, premioMonstruo: 20, experienciaMonstruo: 50, imagen: "monster9.png"),Monstruo(nombreMonstruo:"EsteroideMan", nivelMonstruo: 7, vidaMonstruo: 3, ataqueMonstruo: 80, defensaMonstruo: 200, premioMonstruo: 200, experienciaMonstruo: 200, imagen: "monster1.png"),Monstruo(nombreMonstruo:"Garrapata dorada", nivelMonstruo: 5, vidaMonstruo: 2, ataqueMonstruo: 36, defensaMonstruo: 73, premioMonstruo: 145, experienciaMonstruo: 500, imagen: "monster11.png"),Monstruo(nombreMonstruo:"Ratero dos dagas", nivelMonstruo: 6, vidaMonstruo: 3, ataqueMonstruo: 77, defensaMonstruo: 50, premioMonstruo: 127, experienciaMonstruo: 100, imagen: "monster6.png"),Monstruo(nombreMonstruo:"Manos arañiba", nivelMonstruo: 8, vidaMonstruo: 3, ataqueMonstruo: 85, defensaMonstruo: 63, premioMonstruo: 150, experienciaMonstruo: 200, imagen: "monster5.png"),Monstruo(nombreMonstruo:"Espadachin-chin", nivelMonstruo: 9, vidaMonstruo: 4, ataqueMonstruo: 115, defensaMonstruo: 107, premioMonstruo: 350, experienciaMonstruo: 200, imagen: "monster15.png"),Monstruo(nombreMonstruo:"Mala-Hierba", nivelMonstruo: 4, vidaMonstruo: 4, ataqueMonstruo: 5, defensaMonstruo: 107, premioMonstruo: 90, experienciaMonstruo: 100, imagen: "monster2.png") ]
    }
    
    

    
    /*
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     /*  let segundoView = segue.destination as! ViewController2
     if (segue.identifier == "secue1" ) {
     segundoView.heroeElegido = heroe1
     }else if(segue.identifier == "secue3" ) {
     segundoView.heroeElegido = heroe2
     }else if(segue.identifier == "secue2" ) {
     segundoView.heroeElegido = heroe3
     }*/
     }*/
}
