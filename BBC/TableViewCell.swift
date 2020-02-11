//
//  TableViewCell.swift
//  BBC
//
//  Created by Proshenjit kumar on 11/2/20.
//  Copyright © 2020 Proshenjit kumar. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageShow: UIImageView!
    @IBOutlet weak var LabelShow: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
