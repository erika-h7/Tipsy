//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
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
    }
    
    
    // Stepper Button
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    // Calculate Button
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
    
}

