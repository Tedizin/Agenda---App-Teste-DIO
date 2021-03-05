//
//  CreatTaskTableViewController.swift
//  App Agenda - DIO
//
//  Created by Henrique Silva on 05/03/21.
//

import UIKit

class CreatTaskTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Task Name"
        }else if section == 1 {
            return "Category"
        }else{
            return "Date and Hour"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TaskDescriptionCell", for: indexPath) as! TaskDescriptionTableViewCell
            return cell
        }
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "DateCell", for: indexPath) as! DateTimeTableViewCell
        return cell
    }
    
    
    
}
