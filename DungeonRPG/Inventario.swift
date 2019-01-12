//
//  Inventario.swift
//  DungeonRPG
//
//  Created by CristianK on 30/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//
import UIKit


class Inventario: UIViewController {


    @IBOutlet weak var boxCasco: UIImageView!
    @IBOutlet weak var boxEscudo: UIImageView!
    @IBOutlet weak var boxArmadura: UIImageView!
    @IBOutlet weak var boxArma: UIImageView!
    @IBOutlet weak var boxBotas: UIImageView!
    @IBOutlet weak var boxAnillo: UIImageView!
    
    

    @IBOutlet weak var imageHeroe: UIImageView!
    @IBOutlet weak var labelHeroe: UILabel!

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
       
        
        heroeELegido.mostrarCorazones(numerovidas : heroeELegido.getVida(),corazon1: corazon1,corazon2: corazon2,corazon3: corazon3,corazon4: corazon4)
        

        heroeELegido.mostrarHeroe(image : imageHeroe ,label: labelHeroe)
      
        
        let stuff1 = heroeELegido.getStuff()
        ataque.text = String (heroeELegido.conseguirAtaque(stuff : stuff1))
        defensa.text = String (heroeELegido.conseguirDefensa(stuff : stuff1))
        suerte.text = String (heroeELegido.conseguirSuerte(stuff : stuff1))
        magia.text = String (heroeELegido.conseguirMagia(stuff : stuff1))
        experiencia.text = String (heroeELegido.getExperiencia())
        money.text = String (heroeELegido.getMonedas())
        
        boxCasco.image = heroeELegido.getStuff().getCasco().getImagen()
        boxEscudo.image = heroeELegido.getStuff().getEscudo().getImagen()
        boxArmadura.image = heroeELegido.getStuff().getArmadura().getImagen()
        boxArma.image = heroeELegido.getStuff().getArma().getImagen()
        boxBotas.image = heroeELegido.getStuff().getBotas().getImagen()
        boxAnillo.image = heroeELegido.getStuff().getAnillo().getImagen()
    }
    

   
}
