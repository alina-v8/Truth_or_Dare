//
//  CategoryScreen.swift
//  TDApp
//
//  Created by Alina Verigina on 25.08.2020.
//  Copyright © 2020 Alina Verigina. All rights reserved.
//

import UIKit

class CategoryScreen: UIViewController {

    let arrayOfCategories = [" Family", " Party", " Romantic" ]
    var cellTapped = Int()
      let catSelected = String()
    
    @IBOutlet weak var catCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        catCollectionView.register(CategoryCell.nib(), forCellWithReuseIdentifier: "CategoryCell")

        let cellLayout = UICollectionViewFlowLayout()
        cellLayout.itemSize = CGSize(width: 200, height: 240)
        
        catCollectionView.collectionViewLayout = cellLayout
        
        catCollectionView.delegate = self
        catCollectionView.dataSource = self

        
        catCollectionView.backgroundColor = .clear
    
    }
    



}

extension CategoryScreen: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        catCollectionView.deselectItem(at: indexPath, animated: true)
        cellTapped = indexPath.row
        performSegue(withIdentifier: "goToGameScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToGameScreen" {
                let vc = segue.destination as! GameScreen
            vc.catSelected = arrayOfCategories[cellTapped]
        
        }
        }
    }
    


extension CategoryScreen: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = catCollectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        let catIndex = indexPath.row
        cell.configure(withIm: UIImage (named: "whiteCircle")!, withTxt: arrayOfCategories[catIndex])
        
        return cell
    }
    
    
}

extension CategoryScreen: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 220)
    }
    
}


