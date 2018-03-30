//
//  WeatherCell.swift
//  VNSample
//
//  Created by Mac-Vishal on 28/03/18.
//  Copyright © 2018 Mac-Vishal. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var lblKey: UILabel!
    @IBOutlet weak var lblRank: UILabel!
    @IBOutlet weak var lblArea: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
