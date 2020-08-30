//
//  GameScreen.swift
//  TDApp
//
//  Created by Alina Verigina on 30.08.2020.
//  Copyright © 2020 Alina Verigina. All rights reserved.
//

import UIKit

class GameScreen: UIViewController {
    
    var catSelected = String()
    
    var truthQuestions = ["Question 1",
                          "Question 2",
                          "Question 3",
                          "Question 4",
                          "Question 5"
        
    ]
    
    var dareTasks = ["Dare 1",
                     "Dare 2",
                     "Dare 3",
                     "Dare 4",
                     "Dare 5"
        
    ]
    
    @IBOutlet weak var questionField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //customizing title
        
        self.title = catSelected
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
    }
    
    
    @IBAction func truthButtonTapped(_ sender: UIButton) {
        
        questionField.text = truthQuestions[2]
        
    }
    
    
    @IBAction func dareButtonTapped(_ sender: UIButton) {
        
        questionField.text = dareTasks[2]

    }
   
    
    @IBAction func randomButtonTapped(_ sender: UIButton) {
    }
    
}
