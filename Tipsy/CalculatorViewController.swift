//
//  ViewController.swift
//  Tipsy
//
//  Created by Erika H on 09/08/2022.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    
    // UI
    @IBOutlet weak var billTextFiled: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButoon: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    // Percentage buttons
    @IBAction func tipChanged(_ sender: UIButton) {
        
        // Deselect all tip buttons via IBOutlets
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButoon.isSelected = false
        
        // Make the button that trigger the IBAction slected.
        sender.isSelected = true
        
        
    }
    
    
    // Stepper Button
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    // Calculate Button
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
    
}

