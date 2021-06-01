//
//  ProfileViewController.swift
//  Bernina Sew
//
//  Created by lunarian on 01/06/2020.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Profile"

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutPressed(_ sender: UIButton) {
        
    let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
    } catch let signOutError as NSError {
      print ("Error signing out: %@", signOutError)
    }
      
    }

}
