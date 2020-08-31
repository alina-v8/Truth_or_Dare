//
//  GameScreen.swift
//  TDApp
//
//  Created by Alina Verigina on 30.08.2020.
//  Copyright © 2020 Alina Verigina. All rights reserved.
//

import UIKit

class GameScreen: UIViewController {
    
    var truthIndexes = [0,1,2,3,4]
    
    var randomQ = String()
    
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
        
        
displayTruth()
        
        
        
        
    }
    
    
    @IBAction func dareButtonTapped(_ sender: UIButton) {
        
     displayDare()
    }
    
    
    @IBAction func randomButtonTapped(_ sender: UIButton) {
        
        let randomFunc = Int.random(in: 0...1)
        
        if randomFunc == 0 {
        
            displayTruth()
            
        } else {
        
        displayDare()
        
        }
    }
    
    func randomTruthQ () -> Int {
        
        randomQ = truthQuestions.randomElement()!
        let truthIndex = truthQuestions.firstIndex(of: randomQ)
        questionField.text = truthQuestions[truthIndex!]
        return truthIndex!
    }
    
    func randomDareQ () -> Int {
        randomQ = dareTasks.randomElement()!
        let dareIndex = dareTasks.firstIndex(of: randomQ)
        questionField.text = dareTasks[dareIndex!]
        return dareIndex!
    }
    
    
    func displayTruth () {
        
        
        let randomIndex = randomTruthQ()
               if truthQuestions.count > 1 {
               let remainingQuestions = [truthQuestions.remove(at: randomIndex)]
                   
               } else {
                   resetTruthQuestions()
               }
               
               print (truthQuestions)
               
        
    }
    
    
    func displayDare () {
        
        let randomIndex = randomDareQ()
             if dareTasks.count > 1 {
             let remainingQuestions = [dareTasks.remove(at: randomIndex)]
                 
             } else {
                 resetDareTasks()
             }
             
             print (dareTasks)
    }
    
    func resetTruthQuestions () {
        
        truthQuestions = ["Question 1",
                          "Question 2",
                          "Question 3",
                          "Question 4",
                          "Question 5"
            
        ]
        
    }
    
    func resetDareTasks () {
        
        dareTasks = ["Dare 1",
                     "Dare 2",
                     "Dare 3",
                     "Dare 4",
                     "Dare 5"
            
        ]
        
    }
    
    
}
