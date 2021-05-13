//
//  MeViewController.swift
//  Bernina Sew
//
//  Created by lunarian on 01/06/2020.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet weak var avatarImage: UIImageView!

    @IBOutlet weak var emailTextField: UITextField!
    

    @IBOutlet weak var passwordTextField: UITextField!

    
    @IBAction func showAlert(_ sender: Any, _ title: String) {
        let alertController = UIAlertController(title: title, message:
            "Please try again!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
    

    
    
    var isLoggedIn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
    }

    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let homeTabBarController = storyboard.instantiateViewController(identifier: "HomeTabBarController")
        
        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().signIn(withEmail: email, password: password) { [self] authResult, error in
              
                
                if error != nil{
                    
                    if let errCode = AuthErrorCode(rawValue: error!._code){
                        print(errCode.rawValue)
                        switch errCode.rawValue{
                        case 17008:
                            self.showAlert(UIButton.self, "Invalid email format")
                            break
                        case 17011:
                            self.showAlert(UIButton.self, "Account not registered, please register first.")
                        default:
                            break
                        }
                    }
                            
                    
                }else{

                    performSegue(withIdentifier: "LoginToHome", sender: self)
                    
                    (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate )?.changeRootViewController( homeTabBarController)
                    
                }
                
              

                
            }
            
        }
    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
