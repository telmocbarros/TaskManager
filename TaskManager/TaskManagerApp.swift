//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by Telmo Barros on 25/02/2025.
//

import SwiftUI

@main
struct TaskManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands{
            CommandMenu("Task") {
                Button("Add new task") {
                    
                }
                .keyboardShortcut(KeyEquivalent("r"), modifiers:.command)
            }
            CommandGroup(after: .newItem) {
                Button("Add new group") {
                    
                }
            }
        }
    }
}
