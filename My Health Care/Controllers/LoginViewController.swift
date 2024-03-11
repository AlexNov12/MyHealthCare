//
//  LoginViewController.swift
//  My Health Care
//
//  Created by Александр Новиков on 06.03.2024.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    let alert = UIAlertController(title: "Ошибка", message: "Произошла ошибка при входе. Пожалуйста, проверьте ваш логин и пароль и попробуйте снова.", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style:.default, handler: nil))
                    
                    if let presentingViewController = self.presentingViewController {
                        presentingViewController.present(alert, animated:true, completion: nil)
                    } else {
                        self.present(alert, animated:true, completion: nil)
                    }
                    print("bla")
//                    
//                    // Поможет отследить ошибку
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier:"loginSuccess", sender: self)
                }
            }
        }
    }
}
