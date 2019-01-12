//
//  Tienda.swift
//  DungeonRPG
//
//  Created by CristianK on 30/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//
import UIKit



var item : Item!
var costeItem : Int = 0

class Tienda: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate  {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var labelMoney: UILabel!
    @IBOutlet weak var mensajeLabel: UILabel!
    @IBOutlet weak var buttonBuy: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        labelMoney.text = String (heroeELegido.getMonedas()) + " money"
        labelMoney.textAlignment = .left
        mensajeLabel.text = ""
        
    }
    
    

    func tieneEseObjeto(heroe : Heroe, item : Item)-> Bool{
        var loTiene : Bool = false
        let arma : Item = heroe.getStuff().getArma()
        let armadura : Item = heroe.getStuff().getArmadura()
        let botas : Item = heroe.getStuff().getBotas()
        let escudo : Item = heroe.getStuff().getEscudo()
        let anillo : Item = heroe.getStuff().getAnillo()
        let casco : Item = heroe.getStuff().getCasco()
        
        if(item === arma)||(item === botas)||(item === armadura)||(item === escudo)||(item === anillo)||(item === casco){
            loTiene = true
        }
        
        return loTiene
    }
    

    
    

    

    
    
    
    func mostrarAlerta(title: String, message: String) {
        
        let alertaGuia = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let cancelar = UIAlertAction(title: "OK", style: .default, handler: {(action) in
            
            self.mensajeLabel.text = ""
        })
        
        alertaGuia.addAction(cancelar)
        present(alertaGuia, animated: true, completion: nil)
        
    }
    

    @IBAction func buttonBuy(_ sender: Any) {
        
        if(heroeELegido.getMonedas() < costeItem){
            
            mostrarAlerta(title: "ERROR", message: "No tienes suficiente dinero!")
            
        }else{
            
            heroeELegido.setMonedas(valor:heroeELegido.getMonedas() - costeItem)
            labelMoney.text = String (heroeELegido.getMonedas()) + " money"
            let tipo = item.getTipo()
            
            switch(tipo){
                
            case "arma":
                heroeELegido.getStuff().setArma(valor: item)
                break
            case "escudo":
                heroeELegido.getStuff().setEscudo(valor: item)
                break
            case "casco":
                heroeELegido.getStuff().setCasco(valor: item)
                break
            case "botas":
                heroeELegido.getStuff().setBotas(valor: item)
                break
            case "armadura":
                heroeELegido.getStuff().setArmadura(valor: item)
                break
            case "anillo":
                heroeELegido.getStuff().setAnillo(valor: item)
                break
            default:
                break
            }
            
        }
        mostrarAlerta(title: "REALIZADO", message: "Compra Satisfactoria!")
        
    }
    

    //PICKERVIEW*******************************************************************************
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayItems.count;
    }
    
    
    
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let myImageView = UIImageView(frame: CGRect(x: -95, y: 0, width: 100, height: 100))
        item = arrayItems[row] as? Item
        myImageView.image = item.getImagen()
        myView.addSubview(myImageView)
        
        
        let ataque = UILabel(frame: CGRect(x: 5, y: -5, width: 300, height: 50))
        let defensa = UILabel(frame: CGRect(x: 5, y: 15, width: 300, height: 50))
        let magia = UILabel(frame: CGRect(x: 5, y: 35, width: 300, height: 50))
        let suerte = UILabel(frame: CGRect(x: 5, y: 55, width: 300, height: 50))
        let coste = UILabel(frame: CGRect(x: 95, y: 40, width: 100, height: 25))
        
        ataque.text = "Atack:" + String (item.getAtaque())
        ataque.textColor = UIColor.white
        defensa.text = "Defend:" + String (item.getDefensa())
        defensa.textColor = UIColor.white
        magia.text = "Magic:" + String (item.getMagia())
        magia.textColor = UIColor.white
        suerte.text = "Lucky:" + String (item.getSuerte())
        suerte.textColor = UIColor.white
        coste.text = "Money:" + String (item.getCoste())
        coste.textColor = UIColor.yellow
        coste.layer.borderWidth = 2
        coste.layer.cornerRadius = 1
        coste.backgroundColor = UIColor.brown
        
        ataque.textAlignment = .left
        defensa.textAlignment = .left
        magia.textAlignment = .left
        suerte.textAlignment = .left
        coste.textAlignment = .center
        
        ataque.font = UIFont(name: "Verdana", size: 15)
        defensa.font = UIFont(name: "Verdana", size: 15)
        magia.font = UIFont(name: "Verdana", size: 15)
        suerte.font = UIFont(name: "Verdana", size: 15)
        coste.font = UIFont(name: "Verdana", size: 15)
        
        myView.addSubview(ataque)
        myView.addSubview(defensa)
        myView.addSubview(magia)
        myView.addSubview(suerte)
        myView.addSubview(coste)
        
        
        
        if(tieneEseObjeto(heroe: heroeELegido, item: item)){
            buttonBuy.isHidden =  true
        }else{
            buttonBuy.isHidden = false
        }
        
        
        return myView
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: NSInteger, inComponent component: Int) {
        item = arrayItems[row] as? Item
        costeItem = item.getCoste()
        
    }
    
    
}
