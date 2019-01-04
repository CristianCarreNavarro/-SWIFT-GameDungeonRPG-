//
//  ViewController4.swift
//  DungeonRPG
//
//  Created by CristianK on 30/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit


class ViewController4: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource  {
    
    var heroeLucha : Heroe!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "secueMenu2" ) {
            let segundaView = segue.destination as! ViewController2
            segundaView.heroeElegido = heroeLucha
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listaMonstruos.count;
    }
   
    
    var listaMonstruos:[Monstruo] = [Monstruo(nombreMonstruo:"Dildok dobladok", nivelMonstruo: 2, vidaMonstruo: 30, ataqueMonstruo: 10, defensaMonstruo: 45, premioMonstruo: 20, experienciaMonstruo: 50, imagen: "monster8.png"), Monstruo(nombreMonstruo:"Chicle pisado", nivelMonstruo: 3, vidaMonstruo: 35, ataqueMonstruo: 12, defensaMonstruo: 48, premioMonstruo: 20, experienciaMonstruo: 50, imagen: "monster9.png"),Monstruo(nombreMonstruo:"EsteroideMan", nivelMonstruo: 7, vidaMonstruo: 88, ataqueMonstruo: 80, defensaMonstruo: 200, premioMonstruo: 200, experienciaMonstruo: 200, imagen: "monster1.png"),Monstruo(nombreMonstruo:"Garrapata dorada", nivelMonstruo: 5, vidaMonstruo: 70, ataqueMonstruo: 36, defensaMonstruo: 73, premioMonstruo: 145, experienciaMonstruo: 500, imagen: "monster11.png"),Monstruo(nombreMonstruo:"Ratero dos dagas", nivelMonstruo: 6, vidaMonstruo: 49, ataqueMonstruo: 77, defensaMonstruo: 50, premioMonstruo: 127, experienciaMonstruo: 100, imagen: "monster6.png"),Monstruo(nombreMonstruo:"Manos arañiba", nivelMonstruo: 8, vidaMonstruo: 99, ataqueMonstruo: 85, defensaMonstruo: 63, premioMonstruo: 150, experienciaMonstruo: 200, imagen: "monster5.png"),Monstruo(nombreMonstruo:"Espadachin-chin", nivelMonstruo: 9, vidaMonstruo: 120, ataqueMonstruo: 115, defensaMonstruo: 107, premioMonstruo: 350, experienciaMonstruo: 200, imagen: "monster15.png"),Monstruo(nombreMonstruo:"Mala-Hierba", nivelMonstruo: 4, vidaMonstruo: 120, ataqueMonstruo: 5, defensaMonstruo: 107, premioMonstruo: 90, experienciaMonstruo: 100, imagen: "monster2.png") ]

  

    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let myImageView = UIImageView(frame: CGRect(x: 0, y: -20, width: 100, height: 100))
        myImageView.image = UIImage(named:listaMonstruos[row].getImagen())
        
        myView.addSubview(myImageView)
        let nombre = UILabel(frame: CGRect(x: -100, y: 80, width: 300, height: 50))
        nombre.text = listaMonstruos[row].getNombreMonstruo()
        nombre.textColor = UIColor.white
    
        nombre.textAlignment = .center
        nombre.font = UIFont(name: "Zapfino", size: 25)
        myView.addSubview(nombre)
        return myView
    }
    
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 150.0
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: NSInteger, inComponent component: Int) {
        
        
    }
    /*
     //MONSTRUOS
     lazy var monstruo = Monstruo(nombreMonstruo:"Mala-Hierba", nivelMonstruo: 4, vidaMonstruo: 120, ataqueMonstruo: 5, defensaMonstruo: 107, premioMonstruo: 90, experienciaMonstruo: 100, imagen: "monster2.png")
     lazy var monstruo1 = Monstruo(nombreMonstruo:"Espadachin-chin", nivelMonstruo: 9, vidaMonstruo: 120, ataqueMonstruo: 115, defensaMonstruo: 107, premioMonstruo: 350, experienciaMonstruo: 200, imagen: "monster15.png")
     lazy var monstruo2 = Monstruo(nombreMonstruo:"Manos arañiba", nivelMonstruo: 8, vidaMonstruo: 99, ataqueMonstruo: 85, defensaMonstruo: 63, premioMonstruo: 150, experienciaMonstruo: 200, imagen: "monster5.png")
     lazy var monstruo3 = Monstruo(nombreMonstruo:"Ratero dos dagas", nivelMonstruo: 6, vidaMonstruo: 49, ataqueMonstruo: 77, defensaMonstruo: 50, premioMonstruo: 127, experienciaMonstruo: 100, imagen: "monster6.png")
     lazy var monstruo4 = Monstruo(nombreMonstruo:"Garrapata dorada", nivelMonstruo: 5, vidaMonstruo: 70, ataqueMonstruo: 36, defensaMonstruo: 73, premioMonstruo: 145, experienciaMonstruo: 500, imagen: "monster11.png")
     lazy var monstruo5 = Monstruo(nombreMonstruo:"EsteroideMan", nivelMonstruo: 7, vidaMonstruo: 88, ataqueMonstruo: 80, defensaMonstruo: 200, premioMonstruo: 200, experienciaMonstruo: 200, imagen: "monster1.png")
     lazy var monstruo6 = Monstruo(nombreMonstruo:"Chicle pisado", nivelMonstruo: 3, vidaMonstruo: 35, ataqueMonstruo: 12, defensaMonstruo: 48, premioMonstruo: 20, experienciaMonstruo: 50, imagen: "monster9.png")
     lazy var monstruo7 = Monstruo(nombreMonstruo:"Dildok 2 mano", nivelMonstruo: 2, vidaMonstruo: 30, ataqueMonstruo: 10, defensaMonstruo: 45, premioMonstruo: 20, experienciaMonstruo: 50, imagen: "monster8.png")
     */
    /* func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {

        var myImageView = UIImageView()
        myImageView.backgroundColor = UIColor.brown
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height:100))
        
        switch row {
        case 0:
            imageView.image =  UIImage(named: "monster2.png")
            ViewMonstruo.addSubview(imageView)
            
        case 1:
            
            imageView.image = UIImage(named: "monster8.png")
            ViewMonstruo.addSubview(imageView)
            
        case 2:
            myImageView = UIImageView(image: UIImage(named:"monster9.png"))
            ViewMonstruo.addSubview(imageView)
            
      
        case 3:
            myImageView = UIImageView(image: UIImage(named:"monster11.png"))
            ViewMonstruo.addSubview(imageView)
            
         
        case 4:
            myImageView = UIImageView(image: UIImage(named:"monster6.png"))
            ViewMonstruo.addSubview(imageView)
            
         
        case 5:
            myImageView = UIImageView(image: UIImage(named:"monster5.png"))
            ViewMonstruo.addSubview(imageView)
            
         
        case 6:
            myImageView = UIImageView(image: UIImage(named:"monster1.png"))
            ViewMonstruo.addSubview(imageView)
            
       
        case 7:
            myImageView = UIImageView(image: UIImage(named:"monster11.png"))
            ViewMonstruo.addSubview(imageView)
            
       
            
        default:
            myImageView.image = nil
       
        }
         return ViewMonstruo
    }
    
   */
 
    
    
    
    
    
    
    
    
    
    
    
 
    
}
