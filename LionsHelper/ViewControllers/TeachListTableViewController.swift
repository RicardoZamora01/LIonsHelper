//
//  TeachListTableViewController.swift
//  LionsHelper
//
//  Created by Ricardo Zamora on 8/5/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

let allTeachers = ["Coffey", "Delaney", "Delgado", "Duenas", "Farias", "Gorman", "Ibarra", "Ides", "Jefferies", "Jenkins", "Korschun", "Lau", "Le", "Leathers", "Mack", "McMillen", "Mendez", "Mesa", "Novick", "Rozo", "Sanchez", "Sonnenberg", "Terrazas", "Werthmann", "White"]

class TeachListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MFMailComposeViewControllerDelegate {
    
    var teachersOUSDEmail: [String] = [
        Teachers.Coffey.ousdEmail,
        Teachers.Delaney.ousdEmail,
        Teachers.Delgado.ousdEmail,
        Teachers.Duenas.ousdEmail,
        Teachers.Farias.ousdEmail,
        Teachers.Gorman.ousdEmail,
        Teachers.Ibarra.ousdEmail,
        Teachers.Ides.ousdEmail,
        Teachers.Jefferies.ousdEmail,
        Teachers.Jenkins.ousdEmail,
        Teachers.Korschun.ousdEmail,
        Teachers.Lau.ousdEmail,
        Teachers.Le.ousdEmail,
        Teachers.Leathers.ousdEmail,
        Teachers.Mack.ousdEmail,
        Teachers.McMillen.ousdEmail,
        Teachers.Mendez.ousdEmail,
        Teachers.Mesa.ousdEmail,
        Teachers.Novick.ousdEmail,
        Teachers.Rozo.ousdEmail,
        Teachers.Sanchez.ousdEmail,
        Teachers.Sonnenberg.ousdEmail,
        Teachers.Terrazas.ousdEmail,
        Teachers.Werthmann.ousdEmail,
        Teachers.White.ousdEmail
    ]
    
    var teachersCCPAEmail: [String] = [
        Teachers.Coffey.ccpaEmail,
        Teachers.Delaney.ccpaEmail,
        Teachers.Delgado.ccpaEmail,
        Teachers.Duenas.ccpaEmail,
        Teachers.Farias.ccpaEmail,
        Teachers.Gorman.ccpaEmail,
        Teachers.Ibarra.ccpaEmail,
        Teachers.Ides.ccpaEmail,
        Teachers.Jefferies.ccpaEmail,
        Teachers.Jenkins.ccpaEmail,
        Teachers.Korschun.ccpaEmail,
        Teachers.Lau.ccpaEmail,
        Teachers.Le.ccpaEmail,
        Teachers.Leathers.ccpaEmail,
        Teachers.Mack.ccpaEmail,
        Teachers.McMillen.ccpaEmail,
        Teachers.Mendez.ccpaEmail,
        Teachers.Mesa.ccpaEmail,
        Teachers.Novick.ccpaEmail,
        Teachers.Rozo.ccpaEmail,
        Teachers.Sanchez.ccpaEmail,
        Teachers.Sonnenberg.ccpaEmail,
        Teachers.Terrazas.ccpaEmail,
        Teachers.Werthmann.ccpaEmail,
        Teachers.White.ccpaEmail
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Teachers"
    }
    
    @objc func sendOusdEmail(_ sender: UIButton) {
        
        let indexPath = sender.tag
        
        let teacher = teachersOUSDEmail[indexPath]
        
        
        let mailComposeViewController = configureMailController()
        mailComposeViewController.setToRecipients([teacher])
        
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            showMailError()
        }
    }
    
    @objc func sendCcpaEmail(_ sender: UIButton) {
        let indexPath = sender.tag
        
        let teacher = teachersCCPAEmail[indexPath]
        
        
        let mailComposeViewController = configureMailController()
        mailComposeViewController.setToRecipients([teacher])
        
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            showMailError()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTeachers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(225)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeacherCell", for: indexPath) as! TeacherTableViewCell
        
        let current = allTeachers[indexPath.row]
        
        switch current {
        case "Delaney":
            cell.teacherName.text = Teachers.Delaney.name
            cell.ccpaEmail.text = Teachers.Delaney.ccpaEmail
            cell.ousdEmail.text = Teachers.Delaney.ousdEmail
            cell.teacherImage.image = Teachers.Delaney.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Delgado":
            cell.teacherName.text = Teachers.Delgado.name
            cell.ccpaEmail.text = Teachers.Delgado.ccpaEmail
            cell.ousdEmail.text = Teachers.Delgado.ousdEmail
            cell.teacherImage.image = Teachers.Delgado.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Duenas":
            cell.teacherName.text = Teachers.Duenas.name
            cell.ccpaEmail.text = Teachers.Duenas.ccpaEmail
            cell.ousdEmail.text = Teachers.Duenas.ousdEmail
            cell.teacherImage.image = Teachers.Duenas.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Farias":
            cell.teacherName.text = Teachers.Farias.name
            cell.ccpaEmail.text = Teachers.Farias.ccpaEmail
            cell.ousdEmail.text = Teachers.Farias.ousdEmail
            cell.teacherImage.image = Teachers.Farias.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Gorman":
            cell.teacherName.text = Teachers.Gorman.name
            cell.ccpaEmail.text = Teachers.Gorman.ccpaEmail
            cell.ousdEmail.text = Teachers.Gorman.ousdEmail
            cell.teacherImage.image = Teachers.Gorman.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Ibarra":
            cell.teacherName.text = Teachers.Ibarra.name
            cell.ccpaEmail.text = Teachers.Ibarra.ccpaEmail
            cell.ousdEmail.text = Teachers.Ibarra.ousdEmail
            cell.teacherImage.image = Teachers.Ibarra.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Ides":
            cell.teacherName.text = Teachers.Ides.name
            cell.ccpaEmail.text = Teachers.Ides.ccpaEmail
            cell.ousdEmail.text = Teachers.Ides.ousdEmail
            cell.teacherImage.image = Teachers.Ides.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Jefferies":
            cell.teacherName.text = Teachers.Jefferies.name
            cell.ccpaEmail.text = Teachers.Jefferies.ccpaEmail
            cell.ousdEmail.text = Teachers.Jefferies.ousdEmail
            cell.teacherImage.image = Teachers.Jefferies.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Jenkins":
            cell.teacherName.text = Teachers.Jenkins.name
            cell.ccpaEmail.text = Teachers.Jenkins.ccpaEmail
            cell.ousdEmail.text = Teachers.Jenkins.ousdEmail
            cell.teacherImage.image = Teachers.Jenkins.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Korschun":
            cell.teacherName.text = Teachers.Korschun.name
            cell.ccpaEmail.text = Teachers.Korschun.ccpaEmail
            cell.ousdEmail.text = Teachers.Korschun.ousdEmail
            cell.teacherImage.image = Teachers.Korschun.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Lau":
            cell.teacherName.text = Teachers.Lau.name
            cell.ccpaEmail.text = Teachers.Lau.ccpaEmail
            cell.ousdEmail.text = Teachers.Lau.ousdEmail
            cell.teacherImage.image = Teachers.Lau.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Le":
            cell.teacherName.text = Teachers.Le.name
            cell.ccpaEmail.text = Teachers.Le.ccpaEmail
            cell.ousdEmail.text = Teachers.Le.ousdEmail
            cell.teacherImage.image = Teachers.Le.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Leathers":
            cell.teacherName.text = Teachers.Leathers.name
            cell.ccpaEmail.text = Teachers.Leathers.ccpaEmail
            cell.ousdEmail.text = Teachers.Leathers.ousdEmail
            cell.teacherImage.image = Teachers.Leathers.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Mack":
            cell.teacherName.text = Teachers.Mack.name
            cell.ccpaEmail.text = Teachers.Mack.ccpaEmail
            cell.ousdEmail.text = Teachers.Mack.ousdEmail
            cell.teacherImage.image = Teachers.Mack.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "McMillen":
            cell.teacherName.text = Teachers.McMillen.name
            cell.ccpaEmail.text = Teachers.McMillen.ccpaEmail
            cell.ousdEmail.text = Teachers.McMillen.ousdEmail
            cell.teacherImage.image = Teachers.McMillen.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Mendez":
            cell.teacherName.text = Teachers.Mendez.name
            cell.ccpaEmail.text = Teachers.Mendez.ccpaEmail
            cell.ousdEmail.text = Teachers.Mendez.ousdEmail
            cell.teacherImage.image = Teachers.Mendez.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Mesa":
            cell.teacherName.text = Teachers.Mesa.name
            cell.ccpaEmail.text = Teachers.Mesa.ccpaEmail
            cell.ousdEmail.text = Teachers.Mesa.ousdEmail
            cell.teacherImage.image = Teachers.Mesa.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Novick":
            cell.teacherName.text = Teachers.Novick.name
            cell.ccpaEmail.text = Teachers.Novick.ccpaEmail
            cell.ousdEmail.text = Teachers.Novick.ousdEmail
            cell.teacherImage.image = Teachers.Novick.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Rozo":
            cell.teacherName.text = Teachers.Rozo.name
            cell.ccpaEmail.text = Teachers.Rozo.ccpaEmail
            cell.ousdEmail.text = Teachers.Rozo.ousdEmail
            cell.teacherImage.image = Teachers.Rozo.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Sanchez":
            cell.teacherName.text = Teachers.Sanchez.name
            cell.ccpaEmail.text = Teachers.Sanchez.ccpaEmail
            cell.ousdEmail.text = Teachers.Sanchez.ousdEmail
            cell.teacherImage.image = Teachers.Sanchez.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Sonnenberg":
            cell.teacherName.text = Teachers.Sonnenberg.name
            cell.ccpaEmail.text = Teachers.Sonnenberg.ccpaEmail
            cell.ousdEmail.text = Teachers.Sonnenberg.ousdEmail
            cell.teacherImage.image = Teachers.Sonnenberg.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Terrazas":
            cell.teacherName.text = Teachers.Terrazas.name
            cell.ccpaEmail.text = Teachers.Terrazas.ccpaEmail
            cell.ousdEmail.text = Teachers.Terrazas.ousdEmail
            cell.teacherImage.image = Teachers.Terrazas.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Werthmann":
            cell.teacherName.text = Teachers.Werthmann.name
            cell.ccpaEmail.text = Teachers.Werthmann.ccpaEmail
            cell.ousdEmail.text = Teachers.Werthmann.ousdEmail
            cell.teacherImage.image = Teachers.Werthmann.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "White":
            cell.teacherName.text = Teachers.White.name
            cell.ccpaEmail.text = Teachers.White.ccpaEmail
            cell.ousdEmail.text = Teachers.White.ousdEmail
            cell.teacherImage.image = Teachers.White.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        case "Coffey":
            cell.teacherName.text = Teachers.Coffey.name
            cell.ccpaEmail.text = Teachers.Coffey.ccpaEmail
            cell.ousdEmail.text = Teachers.Coffey.ousdEmail
            cell.teacherImage.image = Teachers.Coffey.img
            cell.emailOUSDButton.tag = indexPath.row
            cell.emailOUSDButton.addTarget(self, action: #selector(sendOusdEmail(_:)), for: .touchUpInside)
            cell.emailCCPAButton.tag = indexPath.row
            cell.emailCCPAButton.addTarget(self, action: #selector(sendCcpaEmail(_:)), for: .touchUpInside)
            
        default:
             break
        }
        return cell
    }
    
    func configureMailController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        return mailComposerVC
    }
    
    func showMailError() {
        let sendMailErrorAlert = UIAlertController(title: "Could not send email", message: "Your device could not send mail", preferredStyle: .alert)
        
        let dismiss = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        sendMailErrorAlert.addAction(dismiss)
        
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}





