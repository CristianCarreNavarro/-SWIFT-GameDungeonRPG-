//
//  ElegirMonstruo.swift
//  DungeonRPG
//
//  Created by CristianK on 30/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

var indexMonstruo : Int?
var monstruoElegirMonstruo : Monstruo!

class ElegirMonstruo: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource  {
    
  
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var buttonFight: UIButton!
    
 
  //FUNCIONES************************************************************************
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        buttonFight.layer.cornerRadius = 10
        monstruoElegirMonstruo = listaMonstruos[0]
        indexMonstruo = 0
      
    }

 
    

    
    
    
    //PICKERVIEW*******************************************************************
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listaMonstruos.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let myImageView = UIImageView(frame: CGRect(x: 0, y: -20, width: 100, height: 100))
        myImageView.image = UIImage(named:listaMonstruos[row].getImagen())
      
        
        let nombre = UILabel(frame: CGRect(x: -50, y: 90, width: 200, height: 55))
        nombre.text = listaMonstruos[row].getNombreMonstruo()
        nombre.textColor = UIColor.white
        nombre.textAlignment = .center
        nombre.font = UIFont(name: "Zapfino", size: 15)
        nombre.textColor = UIColor.yellow
        nombre.layer.borderWidth = 2
        nombre.layer.cornerRadius = 1
        
  
        myView.addSubview(myImageView)
        myView.addSubview(nombre)
        return myView
    }
    
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 150.0
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: NSInteger, inComponent component: Int) {
     
        monstruoElegirMonstruo = listaMonstruos[pickerView.selectedRow(inComponent: 0)]
        indexMonstruo = row
        
    }
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
}
