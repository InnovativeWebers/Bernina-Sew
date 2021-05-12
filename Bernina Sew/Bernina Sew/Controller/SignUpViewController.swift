//
//  SignUpViewController.swift
//  Bernina Sew
//
//  Created by lunarian on 01/06/2020.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {


    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    @IBOutlet weak var reEnterPasswordTextField: UITextField!
    
    @IBAction func showAlert(_ sender: Any, _ title: String) {
        let alertController = UIAlertController(title: title, message:
            "Please try again!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

 
    }
    
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
    
        if let password = passwordTextField.text, let reEnter = reEnterPasswordTextField.text,
           let email = emailTextField.text
            {
            
                if password.count < 6 || reEnter.count < 6{
                    showAlert(UIButton.self, "Password must contain at least 6 characters")
                }
                else if password != reEnter{
                    showAlert(UIButton.self, "Passwords do not match!")
                    
                }else{
                    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                      
                    if let e = error{
                        print(e.localizedDescription)
                            
                    }else{
                        
                        self.performSegue(withIdentifier: "SignupToLogin", sender: self)
                    }
                
                        
                }
            }

    }
    

}
}
