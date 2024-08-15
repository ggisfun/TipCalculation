//
//  ViewController.swift
//  TipCalculation
//
//  Created by Adam Chen on 2024/8/15.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var peopleTextField: UITextField!
    @IBOutlet weak var totalAmountTextField: UITextField!
    @IBOutlet weak var totalTipTextField: UITextField!
    @IBOutlet weak var averageAmountTextField: UITextField!
    @IBOutlet var tipsPercent: [UIButton]!
    let tipsArray = ["5", "10", "15", "20"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        totalAmountTextField.text = "0"
        totalTipTextField.text = "0"
        averageAmountTextField.text = "0"
    }
    
    
    @IBAction func tipPercentage(_ sender: UIButton) {
        print(sender.tag)
        tipTextField.text = tipsArray[sender.tag]
    }
    
    @IBAction func calculate(_ sender: Any) {
        if let amount = Double(amountTextField.text!),
           let tip = Double(tipTextField.text!),
           let people = Double(peopleTextField.text!) {
            
            let totalAmount = amount * tip / 100 + amount
            let totalTip = amount * tip / 100
            let averageAmount = totalAmount / people
            
            totalAmountTextField.text = String(format: "%.2f", totalAmount)
            totalTipTextField.text! = String(format: "%.2f", totalTip)
            averageAmountTextField.text! = String(format: "%.2f", averageAmount)
            
        }
        view.endEditing(true)
    }
    
    @IBAction func cleanAll(_ sender: Any) {
        amountTextField.text = ""
        tipTextField.text = ""
        peopleTextField.text = ""
        totalAmountTextField.text = "0"
        totalTipTextField.text = "0"
        averageAmountTextField.text = "0"
    }
}

