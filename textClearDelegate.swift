//
//  MemeTextFieldsDelegate.swift
//  MemeMe v2 take 4
//
//  Created by Anan Yousef on 9/9/20.
//  Copyright © 2020 Anan Yousef. All rights reserved.
//

import Foundation
import UIKit

class textClearDelegate: NSObject, UITextFieldDelegate {

    let defaultText: [String: String] = [
        
        "top": "TAP TO EDIT TOP TEXT",
        "bottom": "TAP TO EDIT BOTTOM TEXT"
    ]
    
    // MARK: UITextFieldDelegate Methods
    
    // clear the default text when user taps the text field to begin editing
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField.text == defaultText["top"] || textField.text == defaultText["bottom"] {
            textField.text = ""
        }
    }
    
    // dismiss the keyboard when user presses return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}

