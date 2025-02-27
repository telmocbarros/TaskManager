//
//  StaticTaskListView.swift
//  TaskManager
//
//  Created by Telmo Barros on 25/02/2025.
//

import SwiftUI

struct StaticTaskListView: View {
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
    }
}

#Preview {
    StaticTaskListView(title: "All", tasks: Task.examples())
}
