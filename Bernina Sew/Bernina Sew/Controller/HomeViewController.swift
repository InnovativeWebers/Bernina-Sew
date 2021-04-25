//
//  ViewController.swift
//  Bernina Sew
//
//  Created by lunarian on 01/04/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var featuredImage1: UIImageView!
    
    @IBOutlet weak var featuredImage2: UIImageView!
    
    @IBOutlet weak var featuredImage3: UIImageView!
    
    @IBOutlet weak var patternImage1: UIImageView!
    
    @IBOutlet weak var patternImage2: UIImageView!
    
    @IBOutlet weak var patternImage3: UIImageView!
    
    @IBOutlet weak var freaturedButton: UIButton!
    
    @IBOutlet weak var patternsButton: UIButton!
    
    @IBOutlet weak var eventsTableView: UITableView!
    
    @IBOutlet weak var homeButton: UIButton!
    
    
   
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goTo\(sender.currentTitle!)", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    



}

