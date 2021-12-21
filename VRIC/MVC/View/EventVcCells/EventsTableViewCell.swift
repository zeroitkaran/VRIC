//
//  EventsTableViewCell.swift
//  VRIC
//
//  Created by zeroit01 on 17/12/21.
//

import UIKit

class EventsTableViewCell: UITableViewCell {

    @IBOutlet weak var ImgBanner: UIImageView!
    @IBOutlet weak var LblDate: UILabel!
    @IBOutlet weak var LblTime: UILabel!
    @IBOutlet weak var LblTitle: UILabel!
    @IBOutlet weak var LblDescription: UILabel!
    @IBOutlet weak var BtnEnrollNow: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
