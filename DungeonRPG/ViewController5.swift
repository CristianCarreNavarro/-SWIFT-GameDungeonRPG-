//
//  ViewController5.swift
//  DungeonRPG
//
//  Created by CristianK on 30/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//
import UIKit


class ViewController5: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate  {
    
    var heroeCompras : Heroe!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "secueMenu3" ) {
            let segundaView = segue.destination as! ViewController2
            segundaView.heroeElegido = heroeCompras
    }
    }
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
         pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    
    let dict =  ["boots.png": ViewController.botasCuero, "escudo": ViewController.escudoBarbaSanta] as [String : Any]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ViewController.arrayItems.count;
    }
    
   
 
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let myImageView = UIImageView(frame: CGRect(x: 0, y: -20, width: 100, height: 100))
        myImageView.image = UIImage(named:listaMonstruos[row].getImagen())
        
        myView.addSubview(myImageView)
        let nombre = UILabel(frame: CGRect(x: -100, y: 80, width: 300, height: 50))
        nombre.text = ViewController.arrayItems[row].getAtaque()
        nombre.textColor = UIColor.white
        
        nombre.textAlignment = .center
        nombre.font = UIFont(name: "Zapfino", size: 25)
        myView.addSubview(nombre)
        return myView
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: NSInteger, inComponent component: Int) {
        
    
    }
    

}
