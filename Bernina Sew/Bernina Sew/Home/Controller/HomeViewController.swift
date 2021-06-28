//
//  ViewController.swift
//  Bernina Sew
//
//  Created by lunarian on 01/04/2021.
//

import UIKit

class HomeViewController: UIViewController {
   
    
    @IBOutlet weak var eventsTableView: UITableView!
    
    
    // normally we load the events from an API, however here we simply created a dummy event array since we weren't given an API
    let events: [Event] = [
        Event(eventName: "L1 Workhsop", level: "Beginner", date: "Dick"),
        Event(eventName: "L2 Workhsop", level: "Intermediate", date: "Dick"),
        Event(eventName: "L3 Workhsop", level: "Hard", date: "Dick"),
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        eventsTableView.dataSource = self
        eventsTableView.register(UINib(nibName: "EventTableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        
        self.title = "Home"
        
        let imageIcon = UIImage(systemName: "house.fill", withConfiguration: K.symbolConfig)?.withTintColor(K.brandRed, renderingMode: .alwaysOriginal)
        self.tabBarController?.tabBar.items![0].selectedImage = imageIcon
        

    }
}


extension HomeViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! EventTableViewCell
        
        cell.eventsLabel.text = events[indexPath.row].eventName
        cell.levelLabel.text = events[indexPath.row].level
        
        return cell
    }
    

}
