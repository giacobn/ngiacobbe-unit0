//
//  ViewController.swift
//  Prework Altered
//
//  Created by nicholas giacobbe on 8/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalValue: UILabel!
    @IBOutlet weak var tipValue: UILabel!

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISlider!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var calcButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var  tipPercentage: Int = 0
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        tipPercentage = Int(sender.value)
        tipAmount.text = "\(tipPercentage)"
        
        
    }
  
    @IBAction func Calculate(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tip = bill * (Double(tipPercentage) * 0.01)
        let total = bill + tip
        tipValue.text = String(format:"$%.2f", tip)
        totalValue.text = String(format: "$%.2f", total)
    }
    
    
    
    
}

