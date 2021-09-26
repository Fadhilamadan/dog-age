//
//  ViewController.swift
//  DogAge
//
//  Created by Fadhil Amadan on 6/27/20.
//  Copyright © 2020 Fadhil Amadan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogAgeTextField: UITextField!
    
    @IBOutlet weak var humanAgeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButtonPressed(_ sender: Any) {
        
        if (dogAgeTextField.text != "") {
            let dogAge = Int(dogAgeTextField.text!)
            humanAgeLabel.text = "In human years : \(calculateHumanAge(dogAge: dogAge ?? 0))"
        } else {
            humanAgeLabel.text = "Oops, you must input the field"
        }
        
    }
    
    func calculateHumanAge(dogAge: Int) -> Int {
        var humanAge = 0
        
        if dogAge == 0 {
            
        } else if dogAge == 1 {
            humanAge = 15
        } else if dogAge == 2 {
            humanAge = 24
        } else {
            humanAge = ((dogAge - 2) * 4) + 24
        }
        
        return humanAge
    }

}
