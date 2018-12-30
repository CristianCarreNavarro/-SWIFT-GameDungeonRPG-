//
//  Heroe.swift
//  DungeonRPG
//
//  Created by DAM on 28/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation

public class Heroe{
    private var nombre: String
    private var nivel: Int
    private var experiencia: Int
    private var monedas: Int
    private var stuff: Stuff
    
    init(nombre: String,nivel: Int, experiencia: Int, monedas: Int,stuff : Stuff){
        self.nombre = nombre
        self.nivel = nivel
        self.experiencia = experiencia
        self.monedas = monedas
        self.stuff = stuff
        
    }
    
        func getStuff()->Stuff{
        return stuff
    }
        func getNombre()->String{
            return nombre
        }
        func getNivel()->Int{
            return nivel
        }
        func getExperiencia()->Int{
            return experiencia
        }
        func getMonedas()->Int{
            return monedas
        }
        func setExperiencia(valor: Int){
        self.experiencia=valor
        }
        func setMonedas(valor: Int){
        self.monedas=valor
        }
    
    
}

