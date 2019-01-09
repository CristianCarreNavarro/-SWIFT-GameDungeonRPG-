//
//  ViewController6.swift
//  DungeonRPG
//
//  Created by CristianK on 05/01/2019.
//  Copyright © 2019 DAM. All rights reserved.
//
import UIKit


class ViewController6: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    
    var enemigoFight : Monstruo!
    var heroeFight : Heroe!

       static var arrayDadosHeroe : Array<Any> = []
       static var arrayDadosEnemigo : Array<Any> = []
    
    @IBOutlet weak var imagenEnemigo: UIImageView!
    
    @IBOutlet weak var imagenHeroe: UIImageView!
    
    @IBOutlet weak var DadosMonstruo: UIPickerView!
    @IBOutlet weak var DadosHeroe: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        imagenHeroe.image = UIImage(named: heroeFight.getImagen())
        imagenEnemigo.image = UIImage(named: enemigoFight.getImagen())
        
        ViewController6.arrayDadosEnemigo = ["dice1U.png","dice2U.png","dice3U.png","dice4U.png","dice5U.png","dice6U.png","dice7U.png","dice8U.png","dice9U.png","dice10U.png","dice11U.png","dice12U.png"]
            ViewController6.arrayDadosHeroe = ["dice1.png","dice2.png","dice3.png","dice4.png","dice5.png","dice6.png","dice7.png","dice8.png","dice9.png","dice10.png","dice11.png","dice12.png"]
        
        DadosMonstruo.delegate = self
        DadosMonstruo.dataSource = self
        DadosMonstruo.tag = 1
        DadosHeroe.delegate = self
        DadosHeroe.dataSource = self
        DadosHeroe.tag = 2

 }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "secueVolverFight" ) {
            let cuartaView = segue.destination as! ViewController4
            cuartaView.heroeLucha = heroeFight
        }
    }
    
    

 
    
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ViewController6.arrayDadosEnemigo.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
          let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
if(pickerView.tag == 1){
 
    if(component==0){
        let myImageView = UIImageView(frame: CGRect(x: 14, y: 22, width: 60, height: 57))
        myImageView.image = UIImage(named:ViewController6.arrayDadosEnemigo[row] as! String)
        myView.addSubview(myImageView)
        }
    if(component==1){
            let myImageView = UIImageView(frame: CGRect(x: 25, y: 22, width: 60, height: 57))
            myImageView.image = UIImage(named:ViewController6.arrayDadosEnemigo[row] as! String)
            myView.addSubview(myImageView)
        }
    if(component==2){
            let myImageView = UIImageView(frame: CGRect(x: 32, y: 22, width: 60, height: 57))
            myImageView.image = UIImage(named:ViewController6.arrayDadosEnemigo[row] as! String)
            myView.addSubview(myImageView)
        }
    
        }

if(pickerView.tag == 2){
  
    if(component==0){
            let myImageView = UIImageView(frame: CGRect(x: 14, y: 22, width: 60, height: 57))
            myImageView.image = UIImage(named:ViewController6.arrayDadosHeroe[row] as! String)
            myView.addSubview(myImageView)
            }
    if(component==1){
            let myImageView = UIImageView(frame: CGRect(x: 25, y: 22, width: 60, height: 57))
            myImageView.image = UIImage(named:ViewController6.arrayDadosHeroe[row] as! String)
            myView.addSubview(myImageView)
            }
    if(component==2){
            let myImageView = UIImageView(frame: CGRect(x: 32, y: 22, width: 60, height: 57))
            myImageView.image = UIImage(named:ViewController6.arrayDadosHeroe[row] as! String)
            myView.addSubview(myImageView)
            }
    
        }
       return myView
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 120.0
    }
    
    
    
}

