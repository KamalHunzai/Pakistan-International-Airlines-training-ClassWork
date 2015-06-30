//
//  TableViewCell.swift
//  CoreDataDemo
//
//  Created by Admin on 27/06/2015.
//  Copyright (c) 2015 Kamal Hunzai. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var View: UIView!
    
    @IBOutlet weak var age: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
