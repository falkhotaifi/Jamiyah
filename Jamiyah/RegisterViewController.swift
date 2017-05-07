//
//  RegisterViewController.swift
//  Jamiyah
//
//  Created by Faisal Alkhotaifi on 5/7/17.
//  Copyright © 2017 techaddictsa. All rights reserved.
//

import UIKit

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
    }
    
}
