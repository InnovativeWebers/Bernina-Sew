//
//  EventTableViewCell.swift
//  Bernina Sew
//
//  Created by lunarian on 01/06/2020.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    @IBOutlet weak var eventsLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
