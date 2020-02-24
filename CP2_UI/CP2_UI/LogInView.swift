//
//  LogInView.swift
//  CP2_UI
//
//  Created by Jazmine N Spann on 2/24/20.
//  Copyright © 2020 Jazmine N Spann. All rights reserved.
//

import UIKit
import Parse


class LogInViewController: UIViewController {
    
    @IBOutlet var logInUsernameField: UITextField!
    @IBOutlet var logInPasswordField: UITextField!
    @IBAction func `continue`(_ sender: UIButton)
    {
    
    }
    @IBAction func forgotLogIn(_ sender: UIButton)
    {
        
    }
    
    @IBOutlet weak var segmentControls: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        logInUsernameField.text=""
        logInPasswordField.text=""
    }
}
    override func viewDidAppear(_ animated: Bool) {
      let currentUser = PFUser.current()
      if currentUser != nil {
          loadHomeScreen()
        }
}
func displayErrorM(message: String) {
    let alertView = UIAlertController(title: "Error!", message: message, preferredStyle: .alert)
    let OKAction = UIAlertAction(title: "Okay", style: .default) { (action: UIAlertAction) in
        }
    alertView.addAction(OKAction)
    if let presenter = alertView.popoverPresentationController {
        presenter.sourceView = self.view
        presenter.sourceRect = self.view.bounds
    }
    self.present(alertView, animated: true, completion:nil)
}
func loadHomeScreen () {
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let LogInViewController = storyBoard.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
    self.present(logInViewController, animated: true, completion: nil)
}

