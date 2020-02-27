//
//  logInViewController.swift
//  NEW_UI
//
//  Created by Jazmine N Spann on 2/25/20.
//  Copyright © 2020 Jazmine N Spann. All rights reserved.
//

import Foundation
import UIKit


class logInViewController: UIViewController, UITextFieldDelegate {
    override func viewDidLoad() {
               super.viewDidLoad()
        self.logInUsernameField.delegate = self
        self.logInPasswordField.delegate = self
           }
     @IBOutlet var logInUsernameField: UITextField!
        @IBOutlet var logInPasswordField: UITextField!
        @IBAction func `continue`(_ sender: UIButton)
        {
        
        }
        @IBAction func forgotLogIn(_ sender: UIButton)
        {
            
        }
        
        @IBOutlet weak var segmentControls: UISegmentedControl!
    
   /* func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 */
  
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    func dismissKeyboard () {
        view.endEditing(true)
    }
}

    
