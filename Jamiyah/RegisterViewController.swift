//
//  RegisterViewController.swift
//  Jamiyah
//
//  Created by Faisal Alkhotaifi on 5/7/17.
//  Copyright © 2017 techaddictsa. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var name_textField: UITextField!
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
    @IBAction func register_buttonTobbed(_ sender: Any) {
        let email = email_textField.text!.lowercased()
        let final_email = email.trimmingCharacters(in: .whitespacesAndNewlines)
        let username = name_textField.text!
        let password = password_textField.text!
        let uuid = NSUUID().uuidString
        
        if (final_email.isEmpty || username.isEmpty || password.isEmpty){
            alert_message(userMessage: "يجب اكمال جميع الحقول 😒")
        }
        else {
            FIRAuth.auth()?.createUser(withEmail: final_email, password: password, completion: { (user, error) in
                if (error != nil) {
                    self.alert_message(userMessage: (error?.localizedDescription)!)
                }
                else {
                    self.setUserInfo(user_uid: uuid, email: final_email, username: username)
                    FIRAuth.auth()?.signIn(withEmail: final_email, password: password, completion: nil)
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
    
    func setUserInfo (user_uid: String, email: String, username: String){
        let ref: FIRDatabaseReference!
        ref = FIRDatabase.database().reference().child("Users")
        let user_list = ref.child("User UID\(user_uid)")
        
        user_list.child("E-mail address").setValue(email)
        user_list.child("Username").setValue(username)
    }
    
}
