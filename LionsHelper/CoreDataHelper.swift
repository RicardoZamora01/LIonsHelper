//
//  CoreDataHelper.swift
//  LionsHelper
//
//  Created by Ricardo Zamora on 8/7/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit
import CoreData

struct CoreDataHelper {
    static let context: NSManagedObjectContext = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError()
        }
        let persistentContainer = appDelegate.persistentContainer
        let context = persistentContainer.viewContext
        
        return context
    }()
    
    static func save() {
        do {
            try context.save()
        } catch let error {
            print("Could not save \(error.localizedDescription)")
        }
    }
    
    static func retrieve() -> [Schedule] {
        do {
            let fetchRequest = NSFetchRequest<Schedule>(entityName: "Schedule")
            let results = try context.fetch(fetchRequest)
            return results
        } catch let error {
            print("Could not fetch \(error.localizedDescription)")
            return []
        }
    }
    static func newSchedule() -> Schedule {
        let note = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context) as! Schedule
        return note
    }
}
