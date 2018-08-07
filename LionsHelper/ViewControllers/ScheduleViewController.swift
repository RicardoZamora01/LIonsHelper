//
//  ScheduleViewController.swift
//  LionsHelper
//
//  Created by Ricardo Zamora on 8/7/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class ScheduleViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var periodOne: UITextField!
    @IBOutlet weak var periodTwo: UITextField!
    @IBOutlet weak var periodThree: UITextField!
    @IBOutlet weak var periodFour: UITextField!
    @IBOutlet weak var periodFive: UITextField!
    @IBOutlet weak var periodSix: UITextField!
    @IBOutlet weak var periodSeven: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.periodOne.delegate = self
        self.periodTwo.delegate = self
        self.periodThree.delegate = self
        self.periodFour.delegate = self
        self.periodFive.delegate = self
        self.periodSix.delegate = self
        self.periodSeven.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        periodOne.resignFirstResponder()
        periodTwo.resignFirstResponder()
        periodThree.resignFirstResponder()
        periodFour.resignFirstResponder()
        periodFive.resignFirstResponder()
        periodSix.resignFirstResponder()
        periodSeven.resignFirstResponder()
        
        return true
    }
}
