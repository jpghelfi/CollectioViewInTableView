//
//  CellCollectionViewCell.swift
//  CustomTablaView
//
//  Created by Juan Pablo Ghelfi on 6/6/17.
//  Copyright © 2017 Juan Pablo Ghelfi. All rights reserved.
//

import UIKit
import Kingfisher


class CellCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!

    func setup(image: String){
        
//        self.backgroundColor = .white
        let url = URL(string: image)
        imageView.kf.setImage(with: url)
    }
    
}
