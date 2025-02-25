//
//  TaskGroup.swift
//  TaskManager
//
//  Created by Telmo Barros on 25/02/2025.
//

import Foundation

struct TaskGroup: Identifiable, Hashable {
    let id = UUID()
    var title: String
    let creationDate: Date
    var tasks: [Task]
    
    init(title: String, tasks: [Task] = []) {
        self.title = title
        self.tasks = tasks
        self.creationDate = Date()
    }
    
    static func example() -> TaskGroup {
        let task1 = Task(title: "Task 1")
        let task2 = Task(title: "Task 2")
        let task3 = Task(title: "Task 3")
        
        var group = TaskGroup(title: "Personal")
        group.tasks = [task1, task2, task3]
        return group
    }
    
    static func examples() -> [TaskGroup] {
        let group1 = TaskGroup.example()
        let group2 = TaskGroup(title: "New list")
        return [group1, group2]
    }
}
