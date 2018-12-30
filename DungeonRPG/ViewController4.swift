//
//  ViewController4.swift
//  DungeonRPG
//
//  Created by CristianK on 30/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit


class ViewController4: UIViewController {
    
    var heroeLucha : Heroe!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "secueMenu2" ) {
            let segundaView = segue.destination as! ViewController2
            segundaView.heroeElegido = heroeLucha
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
