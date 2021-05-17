//
//  AirportTableViewCell.swift
//  Assigment2
//
//  Created by 曾意晴 on 2021/5/6.
//

import UIKit

class AirportTableViewCell: UITableViewCell {

    
    @IBOutlet weak var AirportImage: UIImageView!
    @IBOutlet weak var AirportName: UILabel!
    @IBOutlet weak var AirportCity: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
