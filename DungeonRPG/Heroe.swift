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
    private var imagen : String
    private var vida : Int
    
    init(nombre: String,nivel: Int, experiencia: Int, monedas: Int,stuff : Stuff,imagen : String,vida : Int){
        self.nombre = nombre
        self.nivel = nivel
        self.vida = vida
        self.experiencia = experiencia
        self.monedas = monedas
        self.stuff = stuff
        self.imagen = imagen
        
    }
        func getVida()->Int{
        return vida
        }
        func getImagen()->String{
        return imagen
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
        func setVidas(valor: Int){
        self.vida=valor
       }
    
    func  conseguirAtaque(stuff : Stuff)-> Int{
        var ataque : Int  = 0
        ataque = stuff.getArma().getAtaque()+stuff.getBotas().getAtaque()+stuff.getCasco().getAtaque()+stuff.getAnillo().getAtaque()+stuff.getEscudo().getAtaque()+stuff.getArmadura().getAtaque()
        return ataque
    }
    func  conseguirMagia(stuff : Stuff)-> Int{
        var magia : Int  = 0
        magia = stuff.getArma().getMagia()+stuff.getBotas().getMagia()+stuff.getCasco().getMagia()+stuff.getAnillo().getMagia()+stuff.getEscudo().getMagia()+stuff.getArmadura().getMagia()
        return magia
    }
    func  conseguirSuerte(stuff : Stuff)-> Int{
        var suerte : Int  = 0
        suerte = stuff.getArma().getSuerte()+stuff.getBotas().getSuerte()+stuff.getCasco().getSuerte()+stuff.getAnillo().getSuerte()+stuff.getEscudo().getSuerte()+stuff.getArmadura().getSuerte()
        return suerte
    }
    func  conseguirDefensa(stuff : Stuff)-> Int{
        var defensa : Int  = 0
        defensa = stuff.getArma().getDefensa()+stuff.getBotas().getDefensa()+stuff.getCasco().getDefensa()+stuff.getAnillo().getDefensa()+stuff.getEscudo().getDefensa()+stuff.getArmadura().getDefensa()
        return defensa
    }
}

