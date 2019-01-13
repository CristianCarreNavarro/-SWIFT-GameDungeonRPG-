//
//  Batalla.swift
//  DungeonRPG
//
//  Created by CristianK on 05/01/2019.
//  Copyright © 2019 DAM. All rights reserved.
//
import UIKit


var ataqueEnemigo: Int = 0
var ataqueHeroe: Int = 0

var arrayDadosEnemigo  : Array <Any> = []
var arrayDadosHeroe  : Array <Any> = []
var  arrayCorazones :Array<UIImage> = []
var numeroSegunAtaque : Int = 0
var numeroComponentesHeroe : Int = 0
var numeroComponentesMonstruo : Int = 0

class Batalla: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate,UITextFieldDelegate  {

   

    @IBOutlet weak var mensajeLabel: UILabel!
    @IBOutlet weak var imagenEnemigo: UIImageView!
    @IBOutlet weak var imagenHeroe: UIImageView!

    @IBOutlet weak var DadosMonstruo: UIPickerView!
    @IBOutlet weak var DadosHeroe: UIPickerView!

    @IBOutlet weak var buttonAttack: UIButton!
    @IBOutlet weak var golpeEnemigo: UILabel!
    @IBOutlet weak var golpeHeroe: UILabel!
    
    @IBOutlet weak var corazon1Enemigo: UIImageView!
    @IBOutlet weak var corazon2Enemigo: UIImageView!
    @IBOutlet weak var corazon3Enemigo: UIImageView!
    @IBOutlet weak var corazon4Enemigo: UIImageView!
    
    @IBOutlet weak var corazon1Heroe: UIImageView!
    @IBOutlet weak var corazon2Heroe: UIImageView!
    @IBOutlet weak var corazon3Heroe: UIImageView!
    @IBOutlet weak var corazon4Heroe: UIImageView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heroeELegido.mostrarCorazones(numerovidas : heroeELegido.getVida(),corazon1: corazon1Heroe,corazon2: corazon2Heroe,corazon3: corazon3Heroe,corazon4: corazon4Heroe)
        
        heroeELegido.mostrarCorazones(numerovidas : monstruoElegirMonstruo.getVidaMonstruo(),corazon1: corazon1Enemigo,corazon2: corazon2Enemigo,corazon3: corazon3Enemigo,corazon4: corazon4Enemigo)
        
        imagenHeroe.image = UIImage(named: heroeELegido.getImagen())
        imagenEnemigo.image = UIImage(named: monstruoElegirMonstruo.getImagen())
        
        arrayDadosEnemigo = ["dice1U.png","dice2U.png","dice3U.png","dice4U.png","dice5U.png","dice6U.png","dice7U.png","dice8U.png","dice9U.png","dice10U.png","dice11U.png","dice12U.png"]
        arrayDadosHeroe = ["dice1.png","dice2.png","dice3.png","dice4.png","dice5.png","dice6.png","dice7.png","dice8.png","dice9.png","dice10.png","dice11.png","dice12.png"]
        
        DadosMonstruo.delegate = self
        DadosMonstruo.dataSource = self
        DadosMonstruo.tag = 1
        DadosHeroe.delegate = self
        DadosHeroe.dataSource = self
        DadosHeroe.tag = 2
        buttonAttack.layer.cornerRadius = 10
        
        if( estabadeParranda()){
              mostrarAlerta(title: "MUERTO", message: "Los muertos no Pelean!")
        }
    }
    
    func estabadeParranda()-> Bool{
        var muerto : Bool = false
        if (heroeELegido.getVida()==0){
            buttonAttack.isHidden = true
            imagenHeroe.image = UIImage(named: "rip.png")
          
            muerto = true

        }
       return muerto
    }
    
    func mostrarAlerta(title: String, message: String) {
        
        let alertaGuia = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let OK = UIAlertAction(title: "OK", style: .default, handler: {(action) in
            
            self.mensajeLabel.text = ""
        })
        
        alertaGuia.addAction(OK)
        present(alertaGuia, animated: true, completion: nil)
        
    }
  
  
    func SaberAtaqueHeroe(heroe : Heroe)-> Int {
        let ataque = heroe.conseguirAtaque(stuff: heroe.getStuff())
         let defensa = heroe.conseguirDefensa(stuff: heroe.getStuff())
         let magia = heroe.conseguirMagia(stuff: heroe.getStuff())
         let lucky = heroe.conseguirSuerte(stuff: heroe.getStuff())
        
    let ataqueTotal = ataque + defensa + magia + lucky / 4
        
        if (ataqueTotal <= 10 ){
            numeroSegunAtaque = 1
        }else if(ataqueTotal > 10  &&  ataqueTotal <= 25  ){
            numeroSegunAtaque = 2
        }else{
            numeroSegunAtaque = 3
        }
    return numeroSegunAtaque
    }
    
  
func SaberAtaqueMonstruo(monstruo : Monstruo)-> Int {
    
   let nivelMonstruo = monstruo.getNivelMonstruo()
        
        if (nivelMonstruo <=  3){
            numeroSegunAtaque = 1
        }else if(nivelMonstruo > 3  &&  nivelMonstruo <= 6  ){
            numeroSegunAtaque = 2
        }else{
            numeroSegunAtaque = 3
        }
        return numeroSegunAtaque
    }
    
    
    
    
    //PICKERVIEW*******************************************************************
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
          if(pickerView.tag == 2){
           numeroSegunAtaque = SaberAtaqueHeroe(heroe: heroeELegido)
        
        }
        if(pickerView.tag == 1){
            numeroSegunAtaque = SaberAtaqueMonstruo(monstruo: monstruoElegirMonstruo)
            
        }
        return numeroSegunAtaque
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayDadosEnemigo.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        //MEJOR CON UN FOR PERO NO QUIERO LIARLA
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
      
        if(pickerView.tag == 1){
          numeroComponentesMonstruo = pickerView.numberOfComponents
            
            if(numeroComponentesMonstruo==3){
           
            if(component==0){
                let myImageView = UIImageView(frame: CGRect(x: 14, y: 22, width: 60, height: 57))
                myImageView.image = UIImage(named:arrayDadosEnemigo[row] as! String)
                myView.addSubview(myImageView)
            }
            if(component==1){
                let myImageView = UIImageView(frame: CGRect(x: 25, y: 22, width: 60, height: 57))
                myImageView.image = UIImage(named:arrayDadosEnemigo[row] as! String )
                myView.addSubview(myImageView)
            }
            if(component==2){
                let myImageView = UIImageView(frame: CGRect(x: 32, y: 22, width: 60, height: 57))
                myImageView.image = UIImage(named:arrayDadosEnemigo[row] as! String )
                myView.addSubview(myImageView)
            }
                
            }else if(numeroComponentesMonstruo==2){
                
                if(component==0){
                    let myImageView = UIImageView(frame: CGRect(x: 14, y: 22, width: 60, height: 57))
                    myImageView.image = UIImage(named:arrayDadosEnemigo[row] as! String)
                    myView.addSubview(myImageView)
                }
                if(component==1){
                    let myImageView = UIImageView(frame: CGRect(x: 25, y: 22, width: 60, height: 57))
                    myImageView.image = UIImage(named:arrayDadosEnemigo[row] as! String )
                    myView.addSubview(myImageView)
                }
            }else{
                    if(component==0){
                        let myImageView = UIImageView(frame: CGRect(x: 14, y: 22, width: 60, height: 57))
                        myImageView.image = UIImage(named:arrayDadosEnemigo[row] as! String)
                        myView.addSubview(myImageView)
                    }
                    
                }
            
        }
        
        if(pickerView.tag == 2){
            
        numeroComponentesHeroe = pickerView.numberOfComponents
            
        if(numeroComponentesHeroe==3){
            
            if(component==0){
                let myImageView = UIImageView(frame: CGRect(x: 14, y: 22, width: 60, height: 57))
                myImageView.image = UIImage(named:arrayDadosHeroe[row] as! String )
                myView.addSubview(myImageView)
            }
            if(component==1){
                let myImageView = UIImageView(frame: CGRect(x: 25, y: 22, width: 60, height: 57))
                myImageView.image = UIImage(named:arrayDadosHeroe[row] as! String )
                myView.addSubview(myImageView)
            }
            if(component==2){
                let myImageView = UIImageView(frame: CGRect(x: 32, y: 22, width: 60, height: 57))
                myImageView.image = UIImage(named:arrayDadosHeroe[row] as! String )
                myView.addSubview(myImageView)
            }
        }else if(numeroComponentesHeroe==2){
                if(component==0){
                    let myImageView = UIImageView(frame: CGRect(x: 14, y: 22, width: 60, height: 57))
                    myImageView.image = UIImage(named:arrayDadosHeroe[row] as! String )
                    myView.addSubview(myImageView)
                }
                if(component==1){
                    let myImageView = UIImageView(frame: CGRect(x: 25, y: 22, width: 60, height: 57))
                    myImageView.image = UIImage(named:arrayDadosHeroe[row] as! String )
                    myView.addSubview(myImageView)
                }
        }else{
                    if(component==0){
                        let myImageView = UIImageView(frame: CGRect(x: 14, y: 22, width: 60, height: 57))
                        myImageView.image = UIImage(named:arrayDadosHeroe[row] as! String )
                        myView.addSubview(myImageView)
                    }
                }
            
        }
        return myView
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 120.0
    }
    
    

    
    @IBAction func funtionAttack(_ sender: Any) {
        
        animateFight(num:arrayDadosEnemigo.count)
        animateFight(num:arrayDadosHeroe.count)
        
        comprobarSumaDados(atakEnemigo : ataqueEnemigo, atakHeroe : ataqueHeroe ,heroe : heroeELegido, monstruo : monstruoElegirMonstruo )
    }
    
    
    func animateFight(num:Int) {
        
        let randomNumber1 = Int(arc4random_uniform(UInt32(num)))
        let randomNumber2 = Int(arc4random_uniform(UInt32(num)))
        let randomNumber3 = Int(arc4random_uniform(UInt32(num)))
        let randomNumber4 = Int(arc4random_uniform(UInt32(num)))
        let randomNumber5 = Int(arc4random_uniform(UInt32(num)))
        let randomNumber6 = Int(arc4random_uniform(UInt32(num)))
        
        ataqueEnemigo = randomNumber1+randomNumber2+randomNumber3
        ataqueHeroe = randomNumber4+randomNumber5+randomNumber6
        
        golpeEnemigo.text = "   golpe: " + String (ataqueEnemigo)
        golpeHeroe.text = "   golpe: " + String (ataqueHeroe)
        
      /*
        for index in 0...numeroComponentesMonstruo {
            
            DadosMonstruo.selectRow(randomNumber1-1, inComponent: index, animated: true)
            
            
        }*/
        if (numeroComponentesMonstruo==3){
        DadosMonstruo.selectRow(randomNumber1-1, inComponent: 0, animated: true)
        DadosMonstruo.selectRow(randomNumber2-1, inComponent: 1, animated: true)
        DadosMonstruo.selectRow(randomNumber3-1, inComponent: 2, animated: true)
        }else if(numeroComponentesHeroe==2){
            DadosMonstruo.selectRow(randomNumber1-1, inComponent: 0, animated: true)
            DadosMonstruo.selectRow(randomNumber2-1, inComponent: 1, animated: true)
        }else{
            DadosMonstruo.selectRow(randomNumber1-1, inComponent: 0, animated: true)
        }
         /*
        for index in 0...numeroComponentesHeroe {
            
            DadosHeroe.selectRow(randomNumber1-1, inComponent: index, animated: true)
            
            
        }*/

        if (numeroComponentesHeroe==3){
            DadosHeroe.selectRow(randomNumber1-1, inComponent: 0, animated: true)
            DadosHeroe.selectRow(randomNumber2-1, inComponent: 1, animated: true)
            DadosHeroe.selectRow(randomNumber3-1, inComponent: 2, animated: true)
        }else if(numeroComponentesHeroe==2){
            DadosHeroe.selectRow(randomNumber1-1, inComponent: 0, animated: true)
            DadosHeroe.selectRow(randomNumber2-1, inComponent: 1, animated: true)
        }else{
            DadosHeroe.selectRow(randomNumber1-1, inComponent: 0, animated: true)
        }
        
       
        
    }
    
    
    
    func comprobarSumaDados(atakEnemigo : Int,atakHeroe : Int,heroe : Heroe, monstruo : Monstruo ){
        
        if(atakEnemigo > atakHeroe){
            heroe.setVidas(valor: heroe.getVida()-1)
            
        }
        if(atakHeroe > atakEnemigo){
            monstruo.setVida(valor: monstruo.getVidaMonstruo()-1)
            
        }
 
        heroeELegido.mostrarCorazones(numerovidas : heroeELegido.getVida(),corazon1: corazon1Heroe,corazon2: corazon2Heroe,corazon3: corazon3Heroe,corazon4: corazon4Heroe)
        
        heroeELegido.mostrarCorazones(numerovidas : monstruoElegirMonstruo.getVidaMonstruo(),corazon1: corazon1Enemigo,corazon2: corazon2Enemigo,corazon3: corazon3Enemigo,corazon4: corazon4Enemigo)
        
        if (heroeELegido.getVida()==0){
          
            
            
            imagenHeroe.image = UIImage(named: "rip.png")
            
            mostrarAlerta(title: "MUERTO", message: "No tienes suficiente vidas! Te han matado!")
     
            buttonAttack.isHidden = true
            
        
           
            
            
        }
        
        if(monstruoElegirMonstruo.getVidaMonstruo()==0){
            
            muertosMonstruos = true
            
            if(listaMonstruos.isEmpty){
                   mostrarAlerta(title: "FELICITACIONS", message: "Felicidades Has Ganado la AL DUNGEONS DRAGON!!SIGUIENTE PRACTICA!!")
            }
          
            imagenEnemigo.image = UIImage(named: "rip.png")
            
            mostrarAlerta(title: "KILL HIM", message: "Felicidades Has Ganado la Batalla!! Obtienes su dinero y experiencia!")
            
            mensajeLabel.text = ""

            listaMonstruos.remove(at: indexMonstruo!)
            buttonAttack.isHidden = true
            
            
        }
        
        if(buttonAttack.isHidden){
        recompensa()
        }
        }
    
    
    
    func recompensa(){
        heroeELegido.setMonedas(valor: heroeELegido.getMonedas() + monstruoElegirMonstruo.getPremioMonstruo())
        heroeELegido.setExperiencia(valor: heroeELegido.getExperiencia() + monstruoElegirMonstruo.getExperienciaMonstruo())
       
        
    }
    
    
    
    
    func perderCorazones(numerovidas : Int , corazon1 : UIImageView, corazon2 : UIImageView, corazon3 : UIImageView, corazon4 : UIImageView){
        
        switch (numerovidas) {
            
        case 3:
            corazon4.isHidden = true
            break
        case 2:
            corazon1.isHidden = false
            corazon2.isHidden = false
            corazon3.isHidden = true
            corazon4.isHidden = true
            break
        case 1:
            corazon1.isHidden = false
            corazon2.isHidden = true
            corazon3.isHidden = true
            corazon4.isHidden = true
            break
        case 0:
            corazon1.isHidden = true
            corazon2.isHidden = true
            corazon3.isHidden = true
            corazon4.isHidden = true
            break
        default:
            break
        }
    }
    
    
    
    }




    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

/*
 extension UIImage{
 
 func flash(){
 let flash = CABasicAnimation(keyPath: "opacity")
 flash.duration = 0.5
 flash.fromValue = 1
 flash.toValue = 0.1
 flash.timingFunction = CAMediaTimingFunction(name:)
 flash.autoreverses = true
 flash.repeatCount = 3
 
 self.add(flash, forKey:nil)
 }
 
 
 }*/
