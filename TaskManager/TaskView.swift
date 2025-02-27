//
//  TaskView.swift
//  TaskManager
//
//  Created by Telmo Barros on 27/02/2025.
//

import SwiftUI

struct TaskView: View {
    @Binding var task: Task
    
    var body: some View {
        HStack{
            
        }
    }
}

#Preview {
    TaskView(task:.constant(Task.example()))
}
