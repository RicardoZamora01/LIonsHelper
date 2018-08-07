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
    
}
