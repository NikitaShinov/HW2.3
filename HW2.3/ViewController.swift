//
//  ViewController.swift
//  HW2.3
//
//  Created by Никита Шинов on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logInPressed(_ sender: UIButton) {
        if loginTF.text == "User" && passwordTF.text == "Password" {
        performSegue(withIdentifier: "logInSegue", sender: nil)
            
        } else {
            
            let alert = UIAlertController (title: "Ooops!", message: "Login or password is wrong!", preferredStyle: .alert)
            let okAction = UIAlertAction (title: "Got it!", style: .default, handler: nil)
            
            alert.addAction(okAction)
            present (alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func unwindSegueToMainVC (segue: UIStoryboardSegue) {
        
    }
    @IBAction func forgotPasswordButtonPressed() {
        
        let forgotPWAlert = UIAlertController (title: "Forgot your password?", message: "It's Password!", preferredStyle: .alert)
        let okPWAction = UIAlertAction (title: "Got it!", style: .default, handler: nil)
        
        forgotPWAlert.addAction(okPWAction)
        present (forgotPWAlert, animated: true, completion: nil)
    }
    @IBAction func forgotLoginButtonPressed() {
        
        let forgotLoginAlert = UIAlertController (title: "Forgot your login?", message: "It's User!", preferredStyle: .alert)
        let okLoginAction = UIAlertAction (title: "Got it!", style: .default, handler: nil)
        
        forgotLoginAlert.addAction(okLoginAction)
        present (forgotLoginAlert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let logOutVC = segue.destination as? LogOutViewController else { return }
            logOutVC.login = loginTF.text

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

