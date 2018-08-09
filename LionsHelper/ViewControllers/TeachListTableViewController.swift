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
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Teachers"
    }
    
    @IBAction func sendOusdEmail(_ sender: UIButton) {
            configureMailController().setToRecipients([Teachers.Delaney.ousdEmail])
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            showMailError()
        }
    }
    
    @IBAction func sendCcpaEmail(_ sender: UIButton) {
    }
    
//    @IBAction func sendEmail(_ sender: UIButton) {
//        let mailComposeViewController = configureMailController()
//        if MFMailComposeViewController.canSendMail() {
//            self.present(mailComposeViewController, animated: true, completion: nil)
//        } else {
//              showMailError()
//           }
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTeachers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(225)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeacherCell", for: indexPath) as! TeacherTableViewCell
        
        let current = allTeachers[indexPath.row]
        // switch on teacher variable, not Teacher class
        
        switch current {
        case "Delaney":
            cell.teacherName.text = Teachers.Delaney.name
            cell.ccpaEmail.text = Teachers.Delaney.ccpaEmail
            cell.ousdEmail.text = Teachers.Delaney.ousdEmail
            cell.teacherImage.image = Teachers.Delaney.img
        case "Delgado":
            cell.teacherName.text = Teachers.Delgado.name
            cell.ccpaEmail.text = Teachers.Delgado.ccpaEmail
            cell.ousdEmail.text = Teachers.Delgado.ousdEmail
            cell.teacherImage.image = Teachers.Delgado.img
            
        case "Duenas":
            cell.teacherName.text = Teachers.Duenas.name
            cell.ccpaEmail.text = Teachers.Duenas.ccpaEmail
            cell.ousdEmail.text = Teachers.Duenas.ousdEmail
            cell.teacherImage.image = Teachers.Duenas.img
            
        case "Farias":
            cell.teacherName.text = Teachers.Farias.name
            cell.ccpaEmail.text = Teachers.Farias.ccpaEmail
            cell.ousdEmail.text = Teachers.Farias.ousdEmail
            cell.teacherImage.image = Teachers.Farias.img
            
        case "Gorman":
            cell.teacherName.text = Teachers.Gorman.name
            cell.ccpaEmail.text = Teachers.Gorman.ccpaEmail
            cell.ousdEmail.text = Teachers.Gorman.ousdEmail
            cell.teacherImage.image = Teachers.Gorman.img
            
        case "Ibarra":
            cell.teacherName.text = Teachers.Ibarra.name
            cell.ccpaEmail.text = Teachers.Ibarra.ccpaEmail
            cell.ousdEmail.text = Teachers.Ibarra.ousdEmail
            cell.teacherImage.image = Teachers.Ibarra.img
            
        case "Ides":
            cell.teacherName.text = Teachers.Ides.name
            cell.ccpaEmail.text = Teachers.Ides.ccpaEmail
            cell.ousdEmail.text = Teachers.Ides.ousdEmail
            cell.teacherImage.image = Teachers.Ides.img
            
        case "Jefferies":
            cell.teacherName.text = Teachers.Jefferies.name
            cell.ccpaEmail.text = Teachers.Jefferies.ccpaEmail
            cell.ousdEmail.text = Teachers.Jefferies.ousdEmail
            cell.teacherImage.image = Teachers.Jefferies.img
            
        case "Jenkins":
            cell.teacherName.text = Teachers.Jenkins.name
            cell.ccpaEmail.text = Teachers.Jenkins.ccpaEmail
            cell.ousdEmail.text = Teachers.Jenkins.ousdEmail
            cell.teacherImage.image = Teachers.Jenkins.img
            
        case "Korschun":
            cell.teacherName.text = Teachers.Korschun.name
            cell.ccpaEmail.text = Teachers.Korschun.ccpaEmail
            cell.ousdEmail.text = Teachers.Korschun.ousdEmail
            cell.teacherImage.image = Teachers.Korschun.img
            
        case "Lau":
            cell.teacherName.text = Teachers.Lau.name
            cell.ccpaEmail.text = Teachers.Lau.ccpaEmail
            cell.ousdEmail.text = Teachers.Lau.ousdEmail
            cell.teacherImage.image = Teachers.Lau.img
            
        case "Le":
            cell.teacherName.text = Teachers.Le.name
            cell.ccpaEmail.text = Teachers.Le.ccpaEmail
            cell.ousdEmail.text = Teachers.Le.ousdEmail
            cell.teacherImage.image = Teachers.Le.img
            
        case "Leathers":
            cell.teacherName.text = Teachers.Leathers.name
            cell.ccpaEmail.text = Teachers.Leathers.ccpaEmail
            cell.ousdEmail.text = Teachers.Leathers.ousdEmail
            cell.teacherImage.image = Teachers.Leathers.img
            
        case "Mack":
            cell.teacherName.text = Teachers.Mack.name
            cell.ccpaEmail.text = Teachers.Mack.ccpaEmail
            cell.ousdEmail.text = Teachers.Mack.ousdEmail
            cell.teacherImage.image = Teachers.Mack.img
            
        case "McMillen":
            cell.teacherName.text = Teachers.McMillen.name
            cell.ccpaEmail.text = Teachers.McMillen.ccpaEmail
            cell.ousdEmail.text = Teachers.McMillen.ousdEmail
            cell.teacherImage.image = Teachers.McMillen.img
            
        case "Mendez":
            cell.teacherName.text = Teachers.Mendez.name
            cell.ccpaEmail.text = Teachers.Mendez.ccpaEmail
            cell.ousdEmail.text = Teachers.Mendez.ousdEmail
            cell.teacherImage.image = Teachers.Mendez.img
            
        case "Mesa":
            cell.teacherName.text = Teachers.Mesa.name
            cell.ccpaEmail.text = Teachers.Mesa.ccpaEmail
            cell.ousdEmail.text = Teachers.Mesa.ousdEmail
            cell.teacherImage.image = Teachers.Mesa.img
            
        case "Novick":
            cell.teacherName.text = Teachers.Novick.name
            cell.ccpaEmail.text = Teachers.Novick.ccpaEmail
            cell.ousdEmail.text = Teachers.Novick.ousdEmail
            cell.teacherImage.image = Teachers.Novick.img
            
        case "Rozo":
            cell.teacherName.text = Teachers.Rozo.name
            cell.ccpaEmail.text = Teachers.Rozo.ccpaEmail
            cell.ousdEmail.text = Teachers.Rozo.ousdEmail
            cell.teacherImage.image = Teachers.Rozo.img
            
        case "Sanchez":
            cell.teacherName.text = Teachers.Sanchez.name
            cell.ccpaEmail.text = Teachers.Sanchez.ccpaEmail
            cell.ousdEmail.text = Teachers.Sanchez.ousdEmail
            cell.teacherImage.image = Teachers.Sanchez.img
            
        case "Sonnenberg":
            cell.teacherName.text = Teachers.Sonnenberg.name
            cell.ccpaEmail.text = Teachers.Sonnenberg.ccpaEmail
            cell.ousdEmail.text = Teachers.Sonnenberg.ousdEmail
            cell.teacherImage.image = Teachers.Sonnenberg.img
            
        case "Terrazas":
            cell.teacherName.text = Teachers.Terrazas.name
            cell.ccpaEmail.text = Teachers.Terrazas.ccpaEmail
            cell.ousdEmail.text = Teachers.Terrazas.ousdEmail
            cell.teacherImage.image = Teachers.Terrazas.img
            
        case "Werthmann":
            cell.teacherName.text = Teachers.Werthmann.name
            cell.ccpaEmail.text = Teachers.Werthmann.ccpaEmail
            cell.ousdEmail.text = Teachers.Werthmann.ousdEmail
            cell.teacherImage.image = Teachers.Werthmann.img
            
        case "White":
            cell.teacherName.text = Teachers.White.name
            cell.ccpaEmail.text = Teachers.White.ccpaEmail
            cell.ousdEmail.text = Teachers.White.ousdEmail
            cell.teacherImage.image = Teachers.White.img
            
        case "Coffey":
            cell.teacherName.text = Teachers.Coffey.name
            cell.ccpaEmail.text = Teachers.Coffey.ccpaEmail
            cell.ousdEmail.text = Teachers.Coffey.ousdEmail
            cell.teacherImage.image = Teachers.Coffey.img
        default:
             break
        }
        return cell
    }
    
    func configureMailController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        //mailComposerVC.setToRecipients(["ricardozamora@ccpaedu.com"])
        
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





