//
//  ResetPasswordController.swift
//  Jamiyah
//
//  Created by Faisal Alkhotaifi on 5/8/17.
//  Copyright © 2017 techaddictsa. All rights reserved.
//

import UIKit
import Firebase

class ResetPasswordController: UIViewController {
    @IBOutlet weak var email_textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func resetPassword_buttonTapped(_ sender: Any) {
        let email = email_textField.text!
        let final_email = email.trimmingCharacters(in: .whitespacesAndNewlines)
        if (final_email.isEmpty){
            alert_message(alertTitle: "تنبيه", userMessage: "يجب ادخال الايميل")
        } else {
            FIRAuth.auth()?.sendPasswordReset(withEmail: final_email, completion: { (error) in
                if error != nil {
                    self.alert_message(alertTitle: "تنبيه", userMessage: (error?.localizedDescription)!)
                } else {
                    self.alert_message(alertTitle: "تأكيد", userMessage: "تم الارسل للإيميل \(final_email)" )
                }
            })
        }
    }
    
    @IBAction func back_buttonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func alert_message (alertTitle: String, userMessage: String){
        let alert = UIAlertController(title: alertTitle, message: userMessage, preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "الغاء", style: .cancel, handler: nil)
        alert.addAction(dismiss)
        self.present(alert, animated: true, completion: nil)
    }

}
