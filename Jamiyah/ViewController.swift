//
//  ViewController.swift
//  Jamiyah
//
//  Created by Faisal Alkhotaifi on 5/6/17.
//  Copyright © 2017 techaddictsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func signOut_buttonTabbed(_ sender: Any) {
        performSegue(withIdentifier: "MoveToSignInRegView", sender: self)
    }
    


}

