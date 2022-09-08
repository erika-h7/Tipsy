//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Infinity Code on 9/8/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // UILabels
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var result = "0.0"
    var tip = 0
    var split = 0
    
    var bill: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = "$ \(result)"
        settingsLabel.text = "Split between \(split) people 👨, with \(tip)% tip 💁‍♀️."

        
    }
    
    // Recalculate Button, dissmis results screen
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
        // Clears the text field for the next calculation
        bill.text = ""
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
