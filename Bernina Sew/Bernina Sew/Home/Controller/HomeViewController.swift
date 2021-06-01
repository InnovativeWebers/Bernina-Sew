//
//  ViewController.swift
//  Bernina Sew
//
//  Created by lunarian on 01/04/2021.
//

import UIKit

class HomeViewController: UIViewController {
   
    
    @IBOutlet weak var eventsTableView: UITableView!
    
    let events : [Event] = [
        Event(eventMessage: "L1 Workhsop", level: "Beginner"),
        Event(eventMessage: "L2 Workhsop", level: "Intermediate"),
        Event(eventMessage: "L3 Workhsop", level: "Hard"),
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        eventsTableView.dataSource = self
        eventsTableView.register(UINib(nibName: "EventTableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        
        self.title = "Home"

    }
    

}


extension HomeViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! EventTableViewCell
        
        cell.eventsLabel.text = events[indexPath.row].eventMessage
        cell.levelLabel.text = events[indexPath.row].level
        
        return cell
    }
    

}
