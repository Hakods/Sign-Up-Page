//
//  ViewController.swift
//  AlertProject
//
//  Created by Ahmet Hakan Altıparmak on 9.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    
    @IBOutlet weak var passwordText: UITextField!
    
    
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func signUpClicked(_ sender: Any) {
       
        if nameText.text == "" || passwordText.text == "" || password2Text.text == ""{
            makeAlert(titleInput: "Hata", messageInput: "Lütfen tüm boşlukları doldurunuz.")
        }
        else if passwordText.text != password2Text.text{
                makeAlert(titleInput: "Hata", messageInput: "Şifreleriniz uyuşmuyor")
        }
        else
        {
            makeAlert(titleInput: "Başarılı", messageInput: "Başarılı bir şekilde kayıt işlemini gerçekleştirdiniz.")
        }
    }
    
    func makeAlert(titleInput : String, messageInput : String)
    {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

