//
//  CalorieIntakeTableViewController.swift
//  Calorie Tracker 2-15
//
//  Created by Lisa Sampson on 2/15/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

import UIKit
import CoreData
import SwiftChart

class CalorieIntakeTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Properties and Outlets
    
    var intake: [Intake] = []
    let series = ChartSeries([])
    let formatter = DateFormatter()

    @IBOutlet weak var chart: Chart!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return intake.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "intakeCell", for: indexPath)
        
        let calIntake = intake[indexPath.row]
        cell.textLabel?.text = "Calories: \(calIntake.calories)"
        
        formatter.dateFormat = "MM/dd/yyyy 'at' hh:mm aaa"
        cell.detailTextLabel?.text = calIntake.timestamp.map({ (timestamp) -> String in
            return formatter.string(from: timestamp)
        })

        return cell
    }
}
