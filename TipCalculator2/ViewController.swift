//
//  ViewController.swift
//  TipCalculator2
//
//  Created by Gurpreet Sidhu on 1/28/20.
//  Copyright © 2020 gsidhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var control: UISegmentedControl!
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill
        let bill = Double(billField.text!) ?? 0
        
        //Calculate the tip and total
        let tipPercentages =  [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[control.selectedSegmentIndex]
        let total = bill + tip
        
        //update the tip and total
        //tipLabel.text = "$\(tip)"
        tipLabel.text = String(format: "$%.2f", tip)
        //totalLabel.text = "$\(total)"
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
}

