//
//  CellOneTableViewCell.swift
//  CustomTablaView
//
//  Created by Juan Pablo Ghelfi on 6/4/17.
//  Copyright © 2017 Juan Pablo Ghelfi. All rights reserved.
//

import UIKit

class CellOneTableViewCell: UITableViewCell {

    @IBOutlet weak var labelOne: UILabel!
    
    public func setup(aLabel: String){
        labelOne.text = aLabel
    }

}
