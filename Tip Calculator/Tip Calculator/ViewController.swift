//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Sally C Lei on 1/22/20.
//  Copyright © 2020 SL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipChooser: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let tip = bill*tipPercentages[tipChooser.selectedSegmentIndex]
        let total = bill+tip
        tipLabel.text = String(format:"$%.2f", tip)
        tipLabel.sizeToFit()
        totalLabel.text = String(format: "$%.2f", total)
        totalLabel.sizeToFit()
    
    }
    
}

