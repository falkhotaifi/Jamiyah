//
//  SignInRegisterViewController.swift
//  Jamiyah
//
//  Created by Faisal Alkhotaifi on 5/7/17.
//  Copyright © 2017 techaddictsa. All rights reserved.
//

import UIKit

class SignInRegisterViewController: UIViewController {
    @IBOutlet weak var seg_control: UISegmentedControl!
    @IBOutlet weak var signIn_container: UIView!
    @IBOutlet weak var register_container: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        seg_control.setTitleTextAttributes([NSFontAttributeName:UIFont(name: "Muslimah", size: 14)!], for: .normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func segControl_changeValue(_ sender: UISegmentedControl) {
    }
    

}
