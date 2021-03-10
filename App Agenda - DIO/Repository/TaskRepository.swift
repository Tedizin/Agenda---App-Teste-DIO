//
//  TaskRepository.swift
//  App Agenda - DIO
//
//  Created by Henrique Silva on 10/03/21.
//

import Foundation

class TaskRepository {
    
    static let instance: TaskRepository = TaskRepository()

    var tasks: [Task] = []
    
    private init () {
        self.tasks = []
    }
    
    func save(task: Task) {
        self.tasks.append(task)
    }
    
    func update(taskUpdate: Task) {
        let taskIndex = tasks.firstIndex { (task) -> Bool in
            task.id == taskUpdate.id
        }
        tasks.remove(at: taskIndex!)
        tasks.append(taskUpdate)
    }
    
    func getTasks() -> [Task] {
        self.tasks
    }
}
