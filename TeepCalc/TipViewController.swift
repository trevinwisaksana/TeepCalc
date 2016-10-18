//
//  TipViewController.swift
//  TeepCalc
//
//  Created by Trevin Wisaksana on 10/12/16.
//  Copyright © 2016 Trevin Wisaksana. All rights reserved.
//

import UIKit
import Foundation

class TipViewController: UIViewController {
    
    
    @IBOutlet weak var tipTextField: UITextField!
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    // Calculates the Total Bill
    @IBAction func calculateTotal(_ sender: AnyObject) {
        // Guard statement protects it from nil values.
        // billTextField.text casted as a Double.
        // Else, put an empty field.
        guard let currentTipAmount = Double(tipTextField.text!) else {
            tipTextField.text = ""
            return
        }
        
        // If user is editing the billTextField, use this format.
        if (tipTextField.isEditing) {
            // This format allows text to contain two decimal points.
            tipTextField.text = String(format: "%.2f", currentTipAmount)
        }
        
        // Value of the bill saved in the TotalBill class.
        TotalBill.tipPercentage = currentTipAmount
        // Checking to see if the billAmount is transferred to TotalBill class.
        print("BILL AMOUNT: ", TotalBill.billAmount)
        
        
        // Formulas
        let billAmount = TotalBill.billAmount
        let tipPercentage = TotalBill.tipPercentage
        
        let tipAmount = billAmount * tipPercentage
        let total = billAmount + tipAmount
        
        // Saving this to the TotalBill Class
        TotalBill.totalAmount = total
        // Checks if the value is passed to the TotalBill class.
        print("TOTAL AMOUNT: ", TotalBill.totalAmount)
    }
    
    // Pressing Back button will unwind the View Controller
    // TODO: Add Unwind View Controller as a back button.
    // Prevents users from making new view controllers if they go back to the other view controller.
}
