//
//  MarvelCell.swift
//  Marvel_alamo
//
//  Created by JIJO G OOMMEN on 19/06/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class MarvelCell: UITableViewCell {

    @IBOutlet weak var imageoutlet: UIImageView!
    @IBOutlet weak var teamoutlet: UILabel!
    @IBOutlet weak var nameoutlet: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
