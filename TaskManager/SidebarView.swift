//
//  SidebarView.swift
//  TaskManager
//
//  Created by Telmo Barros on 25/02/2025.
//

import SwiftUI

struct SidebarView: View {
    @Binding var userCreatedGroups: [TaskGroup]
    @Binding var selection: TaskSection?
    
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
                ForEach($userCreatedGroups){ $group in
                    HStack{
                        Image(systemName: "folder")
                        TextField("New Group", text: $group.title)
                    }
                }
            }
        }
        .safeAreaInset(edge: .bottom){
            Button(action: {
                let newGroup = TaskGroup(title: "New Group")
                userCreatedGroups.append(newGroup)
            }, label: {
                Label("Add Group", systemImage: "plus.circle")
            })
            .buttonStyle(.borderless)
            .foregroundColor(.accentColor)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .keyboardShortcut(KeyEquivalent("a"), modifiers:.command)
        }
    }
}

#Preview {
    SidebarView(userCreatedGroups: .constant(TaskGroup.examples()), selection:
            .constant(.all))
    .listStyle(.sidebar)
}
