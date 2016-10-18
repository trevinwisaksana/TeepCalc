//
//  TotalViewController.swift
//  TeepCalc
//
//  Created by Trevin Wisaksana on 10/12/16.
//  Copyright © 2016 Trevin Wisaksana. All rights reserved.
//

import UIKit
import Foundation

class TotalViewController: UIViewController {

    // Total Text Field is where the result of the sum of the tip and the bill amount.
    @IBOutlet weak var totalTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Casting the totalTextField as a Double.
        totalTextField.text = String(format: "%.2f", TotalBill.totalAmount)
    }
    
}
