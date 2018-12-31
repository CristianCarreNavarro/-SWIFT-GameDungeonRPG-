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
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 160
    }
let todoJunto = UIView()
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
       
        
        
        
        var myImageView = UIImageView()
        switch row {
        case 0:
            
           
            let label = UILabel(frame: CGRect(x: 60, y: 0, width: 80, height: 50))
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height:50))
           
            imageView.image = UIImage(named: "boots.png")
            label.text = "ataque:100 \n defensa :30 \n magia:45 \n suerte:23 \n coste: 100"
            
            todoJunto.addSubview(label)
            todoJunto.addSubview(imageView)
            
            return todoJunto
          
        case 1:
            myImageView = UIImageView(image: UIImage(named:"boots2.png"))
        case 2:
            myImageView = UIImageView(image: UIImage(named:"sword2.png"))
        case 3:
            myImageView = UIImageView(image: UIImage(named:"arrow3.png"))
        case 4:
            myImageView = UIImageView(image: UIImage(named:"scepter2.png"))
        case 5:
            myImageView = UIImageView(image: UIImage(named:"shield4.png"))
        case 6:
            myImageView = UIImageView(image: UIImage(named:"shield2.png"))
        case 7:
            myImageView = UIImageView(image: UIImage(named:"shield.png"))
        case 8:
            myImageView = UIImageView(image: UIImage(named:"helmet2.png"))
        case 9:
            myImageView = UIImageView(image: UIImage(named:"helmet3.png"))
        case 10:
            myImageView = UIImageView(image: UIImage(named:"helmet5.png"))
        case 11:
            myImageView = UIImageView(image: UIImage(named:"helmet4.png"))
        case 12:
            myImageView = UIImageView(image: UIImage(named:"armour2.png"))
        case 13:
            myImageView = UIImageView(image: UIImage(named:"cap3.png"))
        case 14:
            myImageView = UIImageView(image: UIImage(named:"cap2.png"))
        case 15:
            myImageView = UIImageView(image: UIImage(named:"armour.png"))
        case 16:
            myImageView = UIImageView(image: UIImage(named:"necklace.png"))
        case 17:
            myImageView = UIImageView(image: UIImage(named:"ring.png"))
        case 18:
            myImageView = UIImageView(image: UIImage(named:"ring2.png"))
        default:
            myImageView.image = nil
            
            return todoJunto
        }
        return todoJunto
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: NSInteger, inComponent component: Int) {
        
    
    }
    

}
