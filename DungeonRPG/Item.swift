//
//  Item.swift
//  DungeonRPG
//
//  Created by DAM on 28/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation

public class Item{
    private var ataque: Int
    private var defensa: Int
    private var magia: Int
    private var suerte: Int

    
    init(ataque: Int,defensa: Int, magia:Int, suerte:Int) {
        self.ataque=ataque
        self.defensa=defensa
        self.magia=magia
        self.suerte=suerte
    }
    
    func getAtaque()->Int{
        return ataque
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
    
}
