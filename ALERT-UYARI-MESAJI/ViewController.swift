//
//  ViewController.swift
//  ALERT-UYARI-MESAJI
//
//  Created by MAKAN on 27.09.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func signUpButton(_ sender: Any) {
        /*
        //(BUTONA TIKLAYINCA)UYARI MESAJI OLUSTURMA
        let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default) { (UIAlertAction) in
            //bunu icinde yazicagimiz hersey butona tiklaninca olucak olan action lardir.
            print("button clicked!")
        } //Handler : Butona basilinca birsey yapilmasini istiyorsak handler kismini yapariz.
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil) //Birseyi goster demek. completion : bir islem yapilmasini istiyorsak ekleriz.
        */
        if usernameText.text == "" {
            
            alertMessage(title: "Error!", message: "Username not found!")
            
        }else if passwordText.text == ""{
            
            alertMessage(title: "Error!", message: "Password not found!")
            
        }else if password2Text.text != passwordText.text {
            
            alertMessage(title: "Error!", message: "Password do not match!")
            
        }else {
            
            alertMessage(title: "Success", message: "User OK!")
        }
        
    }
    
    func alertMessage (title : String , message : String){
        //ALERT'i FONKSIYON OLARAK YAZDIK HER YERDEN CAGIRILMASI KOLAY OLSUN DIYE.
        let alert = UIAlertController (title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}

