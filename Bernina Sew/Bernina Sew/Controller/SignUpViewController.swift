//
//  SignUpViewController.swift
//  Bernina Sew
//
//  Created by lunarian on 01/06/2020.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var reEnterPasswordTextField: UITextField!
    @IBAction func showAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Passwords don't match", message:
            "Please enter again!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        

        if let password = passwordTextField.text, let reEnter = reEnterPasswordTextField.text,
           let email = emailTextField.text
            {
                if password != reEnter{
                    showAlert(UIButton.self)
                    
                }else{
                    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                      
                    if let e = error{
                            print(e)
                            
                    }else{
                        self.performSegue(withIdentifier: "SignupToLogin", sender: self)
                    }
                
                        
                }
            }
        


    }
    

}
}
