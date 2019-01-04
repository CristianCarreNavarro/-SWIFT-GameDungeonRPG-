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
    
    //func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

   // }
    
    
    
    //FALLO DE PICKERVIEW VISTA
    
    
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
let todoJunto = UIView()
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
       
        
        
        
        var myImageView = UIImageView()
         /* let labelAtaque = UILabel(frame: CGRect(x: 103, y: 0, width:40, height: 5))
          let labelDefensa = UILabel(frame: CGRect(x: 103, y: 0, width: 40, height: 5 ))
          let labelMagia = UILabel(frame: CGRect(x: 103, y: 0, width: 40, height: 5 ))
          let labelSuerte = UILabel(frame: CGRect(x: 103, y: 0, width: 40, height: 5 ))
          let labelCoste = UILabel(frame: CGRect(x: 103, y: 0, width: 40, height: 5))*/
        
          let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height:100))
        
        switch row {
        case 0:

            imageView.image =  ViewController.botasCuero.getImagen()

           /*     labelAtaque.text = String (ViewController.botasCuero.getAtaque())
                labelDefensa.text = String (ViewController.botasCuero.getDefensa())
                labelMagia.text = String (ViewController.botasCuero.getMagia())
                labelSuerte.text = String (ViewController.botasCuero.getSuerte())
                labelCoste.text = String (ViewController.botasCuero.getCoste())*/

               /*     todoJunto.addSubview(labelAtaque)
                     todoJunto.addSubview(labelDefensa)
                     todoJunto.addSubview(labelMagia)
                     todoJunto.addSubview(labelSuerte)
                     todoJunto.addSubview(labelCoste)
                     todoJunto.addSubview(imageView)*/
            todoJunto.backgroundColor = UIColor.brown
            return todoJunto
          
        case 1:
           
            imageView.image = UIImage(named: "helmet3.png")
         
         /*   labelAtaque.text = "ataque: 100 "
            labelDefensa.text = "defensa: 30"
            labelMagia.text = "magia: 45"
            labelSuerte.text = "suerte: 23"
            labelCoste.text = "coste: 100"
            */
         /*   todoJunto.addSubview(labelAtaque)
            todoJunto.addSubview(labelDefensa)
            todoJunto.addSubview(labelMagia)
            todoJunto.addSubview(labelSuerte)
            todoJunto.addSubview(labelCoste)
            todoJunto.addSubview(imageView)
            todoJunto.backgroundColor = UIColor.brown*/
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 2:
            myImageView = UIImageView(image: UIImage(named:"sword2.png"))
            
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 3:
            myImageView = UIImageView(image: UIImage(named:"arrow3.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 4:
            myImageView = UIImageView(image: UIImage(named:"scepter2.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 5:
            myImageView = UIImageView(image: UIImage(named:"shield4.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 6:
            myImageView = UIImageView(image: UIImage(named:"shield2.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 7:
            myImageView = UIImageView(image: UIImage(named:"shield.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 8:
            myImageView = UIImageView(image: UIImage(named:"helmet2.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 9:
            myImageView = UIImageView(image: UIImage(named:"helmet3.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 10:
            myImageView = UIImageView(image: UIImage(named:"helmet5.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 11:
            myImageView = UIImageView(image: UIImage(named:"helmet4.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 12:
            myImageView = UIImageView(image: UIImage(named:"armour2.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 13:
            myImageView = UIImageView(image: UIImage(named:"cap3.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 14:
            myImageView = UIImageView(image: UIImage(named:"cap2.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 15:
            myImageView = UIImageView(image: UIImage(named:"armour.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 16:
            myImageView = UIImageView(image: UIImage(named:"necklace.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 17:
            myImageView = UIImageView(image: UIImage(named:"ring.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        case 18:
            myImageView = UIImageView(image: UIImage(named:"ring2.png"))
            todoJunto.addSubview(imageView)
            
            return todoJunto
        default:
            myImageView.image = nil
            
            return todoJunto
        }
     
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: NSInteger, inComponent component: Int) {
        
    
    }
    

}
