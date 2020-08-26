//
//  CategoryScreen.swift
//  TDApp
//
//  Created by Alina Verigina on 25.08.2020.
//  Copyright © 2020 Alina Verigina. All rights reserved.
//

import UIKit

class CategoryScreen: UIViewController {

    @IBOutlet weak var catCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        catCollectionView.register(CategoryCell.nib(), forCellWithReuseIdentifier: "CategoryCell")

        let cellLayout = UICollectionViewFlowLayout()
        cellLayout.itemSize = CGSize(width: 200, height: 230)
        
        catCollectionView.collectionViewLayout = cellLayout
        
        catCollectionView.delegate = self
        catCollectionView.dataSource = self

        
        catCollectionView.backgroundColor = .clear
    }
    



}

extension CategoryScreen: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        catCollectionView.deselectItem(at: indexPath, animated: true)
        print ("you tapped me")
    }
    
}

extension CategoryScreen: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = catCollectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        cell.configure(with: UIImage (named: "whiteCircle")!)
        
        return cell
    }
    
    
}

extension CategoryScreen: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 230)
    }
    
}


