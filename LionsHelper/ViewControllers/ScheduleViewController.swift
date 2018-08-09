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
    var schedule: Schedule?
    var schedules: [Schedule]?
    
    
    
    @IBOutlet weak var periodOne: UITextField!
    @IBOutlet weak var periodTwo: UITextField!
    @IBOutlet weak var periodThree: UITextField!
    @IBOutlet weak var periodFour: UITextField!
    @IBOutlet weak var periodFive: UITextField!
    @IBOutlet weak var periodSix: UITextField!
    @IBOutlet weak var periodSeven: UITextField!
    
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        schedules = CoreDataHelper.retrieve()
        if schedules!.count == 1 {
            schedule = schedules![0]
        } else {
            schedule = CoreDataHelper.newSchedule()
        }
        
        periodOne.text = schedule?.firstPeriod ?? ""
        periodTwo.text = schedule?.secondPeriod ?? ""
        periodThree.text = schedule?.thirdPeriod ?? ""
        periodFour.text = schedule?.fourthPeriod ?? ""
        periodFive.text = schedule?.fifthPeriod ?? ""
        periodSix.text = schedule?.sixthPeriod ?? ""
        periodSeven.text = schedule?.seventhPeriod ?? ""
        
        self.periodOne.delegate = self
        self.periodTwo.delegate = self
        self.periodThree.delegate = self
        self.periodFour.delegate = self
        self.periodFive.delegate = self
        self.periodSix.delegate = self
        self.periodSeven.delegate = self
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        schedule?.firstPeriod = periodOne.text ?? ""
        schedule?.secondPeriod = periodTwo.text ?? ""
        schedule?.thirdPeriod = periodThree.text ?? ""
        schedule?.fourthPeriod = periodFour.text ?? ""
        schedule?.fifthPeriod = periodFive.text ?? ""
        schedule?.sixthPeriod = periodSix.text ?? ""
        schedule?.seventhPeriod = periodSeven.text ?? ""
        
        CoreDataHelper.save()

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
        
        schedule?.firstPeriod = periodOne.text ?? ""
        schedule?.secondPeriod = periodTwo.text ?? ""
        schedule?.thirdPeriod = periodThree.text ?? ""
        schedule?.fourthPeriod = periodFour.text ?? ""
        schedule?.fifthPeriod = periodFive.text ?? ""
        schedule?.sixthPeriod = periodSix.text ?? ""
        schedule?.seventhPeriod = periodSeven.text ?? ""
        
        CoreDataHelper.save()
        
        return true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "My Schedule"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier
            else { return }
        
        switch identifier {
            
        case "toSchedule":

            schedule?.firstPeriod = periodOne.text ?? ""
            schedule?.secondPeriod = periodTwo.text ?? ""
            schedule?.thirdPeriod = periodThree.text ?? ""
            schedule?.fourthPeriod = periodFour.text ?? ""
            schedule?.fifthPeriod = periodFive.text ?? ""
            schedule?.sixthPeriod = periodSix.text ?? ""
            schedule?.seventhPeriod = periodSeven.text ?? ""
            CoreDataHelper.save()
            
        default:
            print("unexpected segue identifier")
        }
        
    }
    
}
