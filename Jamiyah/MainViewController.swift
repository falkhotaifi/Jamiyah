//
//  MainViewController.swift
//  Jamiyah
//
//  Created by Faisal Alkhotaifi on 5/6/17.
//  Copyright © 2017 techaddictsa. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sideMenus()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sideMenus(){
        if revealViewController() != nil {
            menuBtn.target = revealViewController()
            menuBtn.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 200
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
}

