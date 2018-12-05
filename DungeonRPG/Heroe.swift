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
    private var stuff = Stuff()
    
    init(nombre: String,nivel: Int, experiencia: Int, monedas: Int){
        self.nombre = nombre
        self.nivel = nivel
        self.experiencia = experiencia
        self.monedas = monedas
        
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
        
}

