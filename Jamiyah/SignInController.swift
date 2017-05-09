//
//  SignInController.swift
//  Jamiyah
//
//  Created by Faisal Alkhotaifi on 5/7/17.
//  Copyright © 2017 techaddictsa. All rights reserved.
//

import UIKit
import Firebase

class SignInController: UIViewController {
    @IBOutlet weak var email_textField: UITextField!
    @IBOutlet weak var password_textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func forgotPassword_buttonTabbed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ResetPassword")
        self.present(vc!, animated: true, completion: nil)
    }
    
    
    @IBAction func signIn_buttonTabbed(_ sender: Any) {
        let email = email_textField.text!.lowercased()
        let final_email = email.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = password_textField.text!

        
        if (final_email.isEmpty || password.isEmpty){
            alert_message(userMessage: "يجب اكمال جميع الحقول 😒")
        }
        else {
            FIRAuth.auth()?.signIn(withEmail: final_email, password: password, completion: { (user, error) in
                if (error != nil) {
                    self.alert_message(userMessage: (error?.localizedDescription)!)
                }
                else {
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainView")
                    self.present(vc!, animated: true, completion: nil)
                }
            })
        }
    }
    
    func alert_message (userMessage: String){
        let alert = UIAlertController(title: "تنبيه", message: userMessage, preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "الغاء", style: .cancel, handler: nil)
        alert.addAction(dismiss)
        self.present(alert, animated: true, completion: nil)
    }
    
}
