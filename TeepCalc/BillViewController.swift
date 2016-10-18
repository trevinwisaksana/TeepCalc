//
//  BillViewController.swift
//  TeepCalc
//
//  Created by Trevin Wisaksana on 10/12/16.
//  Copyright © 2016 Trevin Wisaksana. All rights reserved.
//

import UIKit
import Foundation

/*
 Sudo Code:
    # The user types the billAmount on the billTextField.
        # The value of the billAmount is then stored in the TotalBill class.
    # The user types the tipAmount on the tipTextField.
        # The value of the tipAmount is then stored.
    # The user presses next on the tipAmount view controller which both shows the TotalAmount view controller and calculates the amount TotalAmount to pay.
        # The value of the TotalAmount then becomes the text on the TotalAmountTextField.
 */

class BillViewController: UIViewController {

    // Bill Text Field Output connection
    // Cannot be called unless inside a scope? Why?
    @IBOutlet weak var billTextField: UITextField!
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    /* 
     SUDO CODE:
     # User presses the Next button in the BillViewController
        # billTextField.text casted into a Double.
        # billTextField.text is saved into the TotalBill class.
     # View Controller switches to TipViewController.
     */
    
    // MARK: - "Next" Button Action
    @IBAction func billWasInserted(_ sender: AnyObject) {
        // Guard statement protects it from nil values.
        // billTextField.text casted as a Double.
        // Else, put an empty field.
        guard let currentBillAmount = Double(billTextField.text!) else {
            billTextField.text = ""
            return
        }
        
        // If user is editing the billTextField, use this format.
        if (billTextField.isEditing) {
            // This format allows text to contain two decimal points.
            billTextField.text = String(format: "%.2f", currentBillAmount)
        }
        
        // Value of the bill saved in the TotalBill class.
        TotalBill.billAmount = currentBillAmount
        // Checking to see if the billAmount is transferred to TotalBill class.
        print("BILL AMOUNT: ", TotalBill.billAmount)
    }
}
