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

    
    // Tip starting point
    var tip = 0.10
    // Stepper starting amount
    var numberOfPeople = 1
    // Bill starting amount
    var billTotal = 0.0
    // Final bill
    var finalResult = "0.0"
    
    
    // Percentage buttons
    @IBAction func tipChanged(_ sender: UIButton) {
    
        // Dismissed the keyboard
        billTextFiled.endEditing(true)
        
        // Deselect all tip buttons via IBOutlets
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButoon.isSelected = false
        
        // Make the button that trigger the IBAction slected.
        sender.isSelected = true
        
        // Get the current title of the button that was pressed.
        let buttonTitle = sender.currentTitle!
        
        // Remove the last character (%) from the title then turn it back in to a string
        let buttonTitleMinusPercentSign = String(buttonTitle.dropLast())
        
        // Turn the String into a Double
        let buttonTitleAsNumber = Double(buttonTitleMinusPercentSign)!
        
        // Divide the percent expressed out of 100 in to a decimal e.g. 10 becomes 0.1
        tip = buttonTitleAsNumber / 100
        
        
    }
    
    
    // Stepper Button
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        // Dismissed the keyboard
        billTextFiled.endEditing(true)
        
        //Get the stepper value using sender.value, round it down to a whole number then set it as the text in the splitNumberLabel
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
        //Set the numberOfPeople property as the value of the stepper as a whole number.
        numberOfPeople = Int(sender.value)
        
    }
    
    
    // Calculate Button
    @IBAction func calculatePressed(_ sender: UIButton) {
        // Get the text the user typed in the textField
        let bill = billTextFiled.text!
        
        
        // If the text is not an empty String ""
        if bill != "" {
            
            // Turn the bill from a String e.g. "125.50" to an actual Integer with decimal places e.g. 125.50
            billTotal = Double(bill)!
            
            // Multiply the bill by the tip percentage and divide the number of people to split the bill.
            let result = billTotal * (1 + tip) / Double(numberOfPeople)
//            let result = (billTotal * tip) / Double(numberOfPeople)
            
            // Round the result to 2 decimal places and turn in to a String.
            finalResult = String(format: "%.2f", result)
            
        }
        
        //In Main.storyboard there is a segue between CalculatorVC and ResultsVC with the identifier "goToResults".
        //This line triggers the segue to happen.
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    
    //This method gets triggered just before the segue starts.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            //If the currently triggered segue is the "goToResults" segue.
            if segue.identifier == "goToResults" {
                
                //Get hold of the instance of the destination VC and type cast it to a ResultViewController.
                let destinationVC = segue.destination as! ResultsViewController
                
                //Set the destination ResultsViewController's properties.
                destinationVC.result = finalResult
                destinationVC.tip = Int(tip * 100)
                destinationVC.split = numberOfPeople
                
                destinationVC.bill = billTextFiled
            }
        }
    
}

