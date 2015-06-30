//
//  cellTableViewCell.swift
//  CustomTableView
//
//  Created by Admin on 25/06/2015.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import UIKit

class cellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
