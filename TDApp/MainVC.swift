//
//  MainVC.swift
//  TDApp
//
//  Created by Alina Verigina on 21.08.2020.
//  Copyright © 2020 Alina Verigina. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var playOutlet: UIButton!
    @IBOutlet weak var languageOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationController?.isToolbarHidden = true
        
        
        //customizing buttons
        
        playOutlet.layer.cornerRadius = 30
        languageOutlet.layer.cornerRadius = 30
        
        playOutlet.layer.applySketchShadow(color: .black, alpha: 0.5, x: 0, y: 3, blur: 15, spread: 0)
        languageOutlet.layer.applySketchShadow(color: .black, alpha: 0.5, x: 0, y: 3, blur: 15, spread: 0)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        super.viewWillAppear(true)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        super.viewWillDisappear(true)
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToCategoryScreen", sender: self)
        
    }

    @IBAction func languageButtonTapped(_ sender: UIButton) {
    }
    
    
}


//Extension to add shadows used in Sketch


extension CALayer {
    func applySketchShadow(
        color: UIColor = .black,
        alpha: Float = 0.5,
        x: CGFloat = 0,
        y: CGFloat = 2,
        blur: CGFloat = 4,
        spread: CGFloat = 0)
    {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}
