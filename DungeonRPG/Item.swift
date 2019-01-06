//
//  Item.swift
//  DungeonRPG
//
//  Created by DAM on 28/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation
import UIKit

public class Item{
    private var ataque: Int
    private var defensa: Int
    private var magia: Int
    private var suerte: Int
    private var imagen: UIImage = UIImage()
    private var tipo : String
    private var coste : Int
    
    init(ataque: Int,defensa: Int, magia:Int, suerte:Int, imagen:UIImage,tipo:String, coste:Int) {
        self.ataque=ataque
        self.defensa=defensa
        self.magia=magia
        self.suerte=suerte
        self.imagen=imagen
        self.tipo=tipo
        self.coste=coste
    }
    
    func getAtaque()->Int{
        return ataque
    }
    func getCoste()->Int{
        return coste
    }
    func getDefensa()->Int{
        return defensa
    }
    func getMagia()->Int{
        return magia
    }
    func getSuerte()->Int{
        return suerte
    }
    func getImagen()->UIImage{
        return imagen
    }
    func getTipo()->String{
        return tipo
    }
    func setImagen(valor:UIImage){
        self.imagen = valor
    }
    func setAtaque(valor:Int){
        self.ataque = valor
    }
    func setDefensa(valor:Int){
        self.defensa = valor
    }
    func setMagia(valor:Int){
        self.magia = valor
    }
    func setSuerte(valor:Int){
        self.suerte = valor
    }
    func setCoste(valor:Int){
        self.coste = valor
    }
    
    
}
