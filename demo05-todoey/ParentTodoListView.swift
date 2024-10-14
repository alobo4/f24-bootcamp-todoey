//
//  ParentTodoListView.swift
//  demo05-todoey
//
//  Created by Alec Lobanov on 10/14/24.
//

import SwiftUI

struct ParentTodoListView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Homework"){
                    TodoListView(color: .red)
                }
                .foregroundStyle(.red)
                NavigationLink("Chores"){
                    TodoListView(color: .blue)
                }
                .foregroundStyle(.blue)

            }
            .navigationTitle("Reminders")
        }
    }
}

#Preview {
    ParentTodoListView()
}
