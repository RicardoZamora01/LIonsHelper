//
//  CategoriesViewController.swift
//  LionsHelper
//
//  Created by Ricardo Zamora on 8/3/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

let categories = ["My Schedule", "Teachers", "Calendar", "Sports", "Events"]


class CategoriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let segueIdentifiers = ["scheduleSegue", "teachersSegue", "calendarSegue", "sportsSegue", "eventsSegue"]
    
    var scheduleArray = CoreDataHelper.retrieve()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CategoryTableViewCell
        
        let category = categories[indexPath.row]
        
        cell.titleLabel.text = category
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(150)
    }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueIdentifiers[indexPath.row], sender: self)
    }

    @IBAction func unwindWithSegue(_  segue: UIStoryboardSegue) {
    }
}
