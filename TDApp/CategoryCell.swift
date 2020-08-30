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
    @IBOutlet weak var catLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        catLabel.text = "  Hola"
    }
    
    public func configure (withIm image: UIImage, withTxt text: String) {
        catImage.image = image
        catLabel.text = text
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CategoryCell", bundle: nil)
    }
}


