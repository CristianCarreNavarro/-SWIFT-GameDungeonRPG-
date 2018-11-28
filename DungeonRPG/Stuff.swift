//
//  Stuff.swift
//  DungeonRPG
//
//  Created by DAM on 28/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation

public class Stuff{
    
    private var arma: Item
    private var escudo: Item
    private var casco: Item
    private var botas: Item
    private var armadura: Item
    
    
    init(arma: Item,escudo: Item, casco: Item, botas: Item,armadura: Item){
        self.arma=arma
        self.escudo=escudo
        self.casco=casco
        self.botas=botas
        self.armadura=armadura
    }
    func getArma()->Item{
        return arma
    }
    func getEscudo()->Item{
        return escudo
    }
    func getCasco()->Item{
        return casco
    }
    func getbotas()->Item{
        return botas
    }
    func getArmadura()->Item{
        return armadura
    }
    
    
    func setArma(valor: Item){
        self.arma=valor
    }
    func setEscudo(valor: Item){
        self.escudo=valor
    }
    func setCasco(valor: Item){
        self.casco=valor
    }
    func setBotas(valor: Item){
        self.botas=valor
    }
    func setArmadura(valor: Item){
        self.armadura=valor
    }
    
}
