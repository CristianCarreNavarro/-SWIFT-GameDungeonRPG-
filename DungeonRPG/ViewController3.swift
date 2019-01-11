//
//  ViewController3.swift
//  DungeonRPG
//
//  Created by CristianK on 30/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//
import UIKit


class ViewController3: UIViewController {
    
    var heroeInventory : Heroe!
  
    @IBOutlet weak var boxCasco: UIImageView!
    @IBOutlet weak var boxEscudo: UIImageView!
    @IBOutlet weak var boxArmadura: UIImageView!
    @IBOutlet weak var boxArma: UIImageView!
    @IBOutlet weak var boxBotas: UIImageView!
    @IBOutlet weak var boxAnillo: UIImageView!
    
    
    
    @IBOutlet weak var ImageHeroe: UIImageView!
    @IBOutlet weak var nombreHeroe: UILabel!
    
    @IBOutlet weak var ataque: UILabel!
    @IBOutlet weak var defensa: UILabel!
    @IBOutlet weak var magia: UILabel!
    @IBOutlet weak var suerte: UILabel!
    @IBOutlet weak var money: UILabel!
    @IBOutlet weak var experiencia: UILabel!
   
    @IBOutlet weak var corazon1: UIImageView!
    @IBOutlet weak var corazon2: UIImageView!
    @IBOutlet weak var corazon3: UIImageView!
    @IBOutlet weak var corazon4: UIImageView!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         mostrarCorazones(numerovidas : heroeInventory.getVida(),corazon1: corazon1,corazon2: corazon2,corazon3: corazon3,corazon4: corazon4)
        
        
        if (heroeInventory.getNombre()=="Agro"){
            ImageHeroe.image = UIImage(named: "heroe1.png")
            nombreHeroe.text = "Agro"
        }else if(heroeInventory.getNombre()=="Archer"){
            ImageHeroe.image = UIImage(named: "heroe2.png")
            nombreHeroe.text = "Archer"
        }else if(heroeInventory.getNombre()=="Thojen"){
            ImageHeroe.image = UIImage(named: "heroe3.png")
            nombreHeroe.text = "Thojen"
        }
        
        let stuff1 = heroeInventory.getStuff()
        ataque.text = String (heroeInventory.conseguirAtaque(stuff : stuff1))
        defensa.text = String (heroeInventory.conseguirDefensa(stuff : stuff1))
        suerte.text = String (heroeInventory.conseguirSuerte(stuff : stuff1))
        magia.text = String (heroeInventory.conseguirMagia(stuff : stuff1))
        experiencia.text = String (heroeInventory.getExperiencia())
        money.text = String (heroeInventory.getMonedas())
        
        boxCasco.image = heroeInventory.getStuff().getCasco().getImagen()
        boxEscudo.image = heroeInventory.getStuff().getEscudo().getImagen()
        boxArmadura.image = heroeInventory.getStuff().getArmadura().getImagen()
        boxArma.image = heroeInventory.getStuff().getArma().getImagen()
        boxBotas.image = heroeInventory.getStuff().getBotas().getImagen()
        boxAnillo.image = heroeInventory.getStuff().getAnillo().getImagen()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "secueMenu" ) {
            let segundaView = segue.destination as! ViewController2
            segundaView.heroeElegido = heroeInventory
        }
    }
}
