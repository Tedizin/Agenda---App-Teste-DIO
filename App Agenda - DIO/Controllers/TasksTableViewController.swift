//
//  TasksTableViewController.swift
//  App Agenda - DIO
//
//  Created by Henrique Silva on 03/03/21.
//

import UIKit

let work = Category(name: "Work", color: UIColor.green)
let study = Category(name: "Study", color: UIColor.blue)
let tasks: [Task] = [
    Task(name: "Creat presentation for tomorrow", date: Date(), category: work),
    Task(name: "Study Math", date: Date(), category:study),
]

class TasksTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return tasks.count
    }
    
    private var dateFormatter: DateFormatter = DateFormatter()

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        let task = tasks[indexPath.row]
        
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.dateLabel.text = dateFormatter.string(from: task.date)
        cell.categoryNameLabel.text = task.category.name
        cell.categoryView.backgroundColor = task.category.color
        cell.taskDescriptionLabel.text = task.name
        
        return cell
    }
}
