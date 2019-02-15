//
//  Intake+Convienence.swift
//  Calorie Tracker 2-15
//
//  Created by Lisa Sampson on 2/15/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

import Foundation
import CoreData

extension Intake {
    
    convenience init(calories: Double, timestamp: Date = Date(), context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.calories = calories
        self.timestamp = timestamp
    }

}
