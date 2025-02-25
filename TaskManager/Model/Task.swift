//
//  Task.swift
//  TaskManager
//
//  Created by Telmo Barros on 25/02/2025.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Buy book", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
    
    static func examples() -> [Task] {
        [
            Task(
                title: "Complete project proposal",
                isCompleted: false,
                dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date()) ?? Date(),
                details: "Include budget estimates and timeline projections"
            ),
            Task(
                title: "Schedule team meeting",
                isCompleted: true,
                dueDate: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(),
                details: "Discuss Q2 goals and project assignments"
            ),
            Task(
                title: "Review client feedback",
                isCompleted: false,
                dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date()) ?? Date(),
                details: "Address concerns about latest UI changes"
            ),
            Task(
                title: "Update documentation",
                isCompleted: false,
                dueDate: Calendar.current.date(byAdding: .day, value: 5, to: Date()) ?? Date(),
                details: "Focus on API reference and usage examples"
            ),
            Task(
                title: "Prepare for presentation",
                isCompleted: false,
                dueDate: Calendar.current.date(byAdding: .day, value: 7, to: Date()) ?? Date(),
                details: "Create slides and talking points for stakeholder review"
            ),
            Task(
                title: "Fix UI bugs",
                isCompleted: true,
                dueDate: Calendar.current.date(byAdding: .day, value: -3, to: Date()) ?? Date(),
                details: "Address navigation and form submission issues"
            ),
            Task(
                title: "Run performance tests",
                isCompleted: false,
                dueDate: Calendar.current.date(byAdding: .day, value: 3, to: Date()) ?? Date(),
                details: nil
            ),
            Task(
                title: "Order new equipment",
                isCompleted: false,
                dueDate: Calendar.current.date(byAdding: .day, value: 4, to: Date()) ?? Date(),
                details: "New monitors and docking stations for remote team"
            ),
            Task(
                title: "Submit expense report",
                isCompleted: true,
                dueDate: Calendar.current.date(byAdding: .day, value: -5, to: Date()) ?? Date(),
                details: "Include receipts for conference travel"
            ),
            Task(
                title: "Attend iOS development workshop",
                isCompleted: false,
                dueDate: Calendar.current.date(byAdding: .day, value: 14, to: Date()) ?? Date(),
                details: "Focus on SwiftUI and Combine framework updates"
            )
        ]
    }
}
