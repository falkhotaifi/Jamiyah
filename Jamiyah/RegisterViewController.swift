//
//  RegisterViewController.swift
//  Jamiyah
//
//  Created by Faisal Alkhotaifi on 5/7/17.
//  Copyright © 2017 techaddictsa. All rights reserved.
//

import UIKit
import Firebase
import SkyFloatingLabelTextField

class RegisterViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name_textField: SkyFloatingLabelTextField!
    @IBOutlet weak var email_textField: SkyFloatingLabelTextField!
    @IBOutlet weak var password_textField: SkyFloatingLabelTextField!
    var textFields : [SkyFloatingLabelTextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        name_textField.delegate = self
        name_textField.tag = 0
        name_textField.returnKeyType = UIReturnKeyType.next
        
        email_textField.delegate = self
        email_textField.tag = 1
        email_textField.returnKeyType = UIReturnKeyType.next
        
        password_textField.delegate = self
        password_textField.tag = 2
        password_textField.returnKeyType = UIReturnKeyType.go
      
        // Array of the textFields
        textFields = [name_textField, email_textField, password_textField]
        
        for textfield in textFields{
            textfield.delegate = self
            textfield.titleLabel.font = UIFont(name: "Muslimah", size: 12)
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextfield = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField{
            nextfield.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            return true
        }
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func register_buttonTobbed(_ sender: Any) {
        view.endEditing(true)
        let email = email_textField.text!.lowercased()
        let final_email = email.trimmingCharacters(in: .whitespacesAndNewlines)
        let username = name_textField.text!
        let password = password_textField.text!
        
        if (final_email.isEmpty || username.isEmpty || password.isEmpty){
            print("يجب اكمال جميع الحقول 😒")
        }
        else {
            AuthServices.signUp(username: username, email: final_email, password: password, OnSeccuss: {
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainView")
                self.present(vc!, animated: true, completion: nil)
                print("يا عمري بس")
            }, OnError: { (errorString) in
                print(errorString!)
            })
        }
    }
    
}
