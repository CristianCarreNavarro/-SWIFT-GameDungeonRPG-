//
//  ViewController2.swift
//  DungeonRPG
//
//  Created by CristianK on 27/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//
import UIKit


class ViewController2: UIViewController {
    
  var heroeElegido : Heroe!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "secueInventory" ) {
            let tercerView = segue.destination as! ViewController3
            tercerView.heroeInventory = heroeElegido
        }
        if (segue.identifier == "secueDungeon" ) {
            let cuartaView = segue.destination as! ViewController4
            cuartaView.heroeLucha = heroeElegido
        }
        if (segue.identifier == "secueShop" ) {
            let quintaView = segue.destination as! ViewController5
            quintaView.heroeCompras = heroeElegido
        } 
    }
  
    
    
override func viewDidLoad() {
    super.viewDidLoad()
  
}
    
}
