//
//  CategoryCell.swift
//  TDApp
//
//  Created by Alina Verigina on 26.08.2020.
//  Copyright © 2020 Alina Verigina. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {

     @IBOutlet weak var catImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    public func configure (with image: UIImage) {
        catImage.image = image
    }
    
     static func nib() -> UINib {
        return UINib(nibName: "CategoryCell", bundle: nil)
    }
}


