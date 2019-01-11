//
//  Monstruo.swift
//  DungeonRPG
//
//  Created by DAM on 28/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation

public class Monstruo{
    
    private var nombreMonstruo: String
    private var nivelMonstruo: Int
    private var vidaMonstruo: Int
    private var ataqueMonstruo:Int
    private var defensaMonstruo:Int
    private var premioMonstruo:Int
    private var experienciaMonstruo:Int
    private var imagen: String
    
    init(nombreMonstruo:String, nivelMonstruo:Int, vidaMonstruo:Int, ataqueMonstruo:Int, defensaMonstruo:Int, premioMonstruo:Int, experienciaMonstruo:Int,imagen:String){
        
        self.nombreMonstruo = nombreMonstruo
        self.nivelMonstruo = nivelMonstruo
        self.vidaMonstruo = vidaMonstruo
        self.ataqueMonstruo = ataqueMonstruo
        self.defensaMonstruo = defensaMonstruo
        self.premioMonstruo = premioMonstruo
        self.experienciaMonstruo=experienciaMonstruo
        self.imagen=imagen
        
    }
    func getImagen()->String{
        return imagen
    }
    func getNombreMonstruo()->String{
        return nombreMonstruo
    }
    func getNivelMonstruo()->Int{
        return nivelMonstruo
    }
    func getVidaMonstruo()->Int{
        return vidaMonstruo
    }
    func getAtaqueMonstruo()->Int{
        return ataqueMonstruo
    }
    func getDefensaMonstruo()->Int{
        return defensaMonstruo
    }
    func getPremioMonstruo()->Int{
        return premioMonstruo
    }
    func getExperienciaMonstruo()->Int{
        return experienciaMonstruo
    }
    func setVida(valor: Int){
        self.vidaMonstruo=valor
    }
    
    
}
