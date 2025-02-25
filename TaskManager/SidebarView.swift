//
//  SidebarView.swift
//  TaskManager
//
//  Created by Telmo Barros on 25/02/2025.
//

import SwiftUI

struct SidebarView: View {
    let userCreatedGroups: [TaskGroup]
    @Binding var selection: TaskSection
    
    var body: some View {
        List(selection: $selection) {
            Section("Favourites") {
                ForEach(TaskSection.allCases) { selection in
                    Label(
                        selection.displayName,
                        systemImage: selection.iconName
                    ).tag(selection)
                }
            }
            
            Section("Your Groups") {
                ForEach(userCreatedGroups){group in
                    Label(group.title, systemImage: "folder")
                        .tag(TaskSection.list(group))
                }
            }
        }
    }
}

#Preview {
    SidebarView(userCreatedGroups: TaskGroup.examples(), selection:
            .constant(.all))
    .listStyle(.sidebar)
}
