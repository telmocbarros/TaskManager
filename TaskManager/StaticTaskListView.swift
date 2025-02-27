//
//  TaskListView.swift
//  TaskManager
//
//  Created by Telmo Barros on 25/02/2025.
//

import SwiftUI

struct TaskListView: View {
    let title: String
    let tasks: [Task]
    var body: some View {
        List(tasks) { task in
            HStack{
                Image(systemName: task.isCompleted
                      ? "largecircle.fill.circle" : "circle")
                Text(task.title)
            }

        }
        
        Text("Task List View")
    }
}

#Preview {
    TaskListView(title: "All", tasks: Task.examples())
}
