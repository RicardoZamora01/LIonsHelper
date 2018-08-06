//
//  TeachListTableViewController.swift
//  LionsHelper
//
//  Created by Ricardo Zamora on 8/5/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class TeachListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let allTeachers = ["Delaney", "Delgado", "Duenas", "Farias", "Gorman", "Ibarra", "Ides", "Jefferies", "Jenkins", "Korschun", "Lau", "Le", "Leathers", "Mack", "McMillen", "Mendez", "Mesa", "Novick", "Rozo", "Sanchez", "Sonnenberg", "Terrazas", "Werthmann", "White", "Coffey"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTeachers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(200)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeacherCell", for: indexPath) as! TeacherTableViewCell
        
        //let current = allTeachers[indexPath.row]
//        switch Teachers {
//            case .
//        }
        
        cell.teacherName.text = Teachers.Delaney.name
        cell.ccpaEmail.text = Teachers.Delaney.ccpaEmail
        cell.ousdEmail.text = Teachers.Delaney.ousdEmail
        cell.teacherImage.image = Teachers.Delaney.img
        return cell
    }
}
