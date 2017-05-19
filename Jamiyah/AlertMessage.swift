//
//  AlertMessage.swift
//  Jamiyah
//
//  Created by Faisal Alkhotaifi on 5/18/17.
//  Copyright © 2017 techaddictsa. All rights reserved.
//

import Foundation
import UIKit

class AlertMessage {
    
    static func displayMessage(userMessage: String){
        let alert = UIAlertController(title: "تنبيه", message: userMessage, preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "الغاء", style: .cancel, handler: nil)
        alert.addAction(dismiss)
        //present(alert, animated: true, completion: nil)
    }
}
