//
//  SecondTableViewCell.swift
//  Assigment2
//
//  Created by 曾意晴 on 2021/5/13.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var InfoImage: UIImageView!
    @IBOutlet weak var InfoName: UILabel!
    @IBOutlet weak var InfoCity: UILabel!
    @IBOutlet weak var InfoIATA: UILabel!
    @IBOutlet weak var InfoshortName: UILabel!
    
    var airport: Airport?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       
        
        InfoImage.image = UIImage(named: (airport?.imageName)!)
        InfoName.text = airport?.name
        InfoCity.text = airport?.country
        InfoIATA.text = airport?.IATA
        InfoshortName.text = airport?.shortName

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
