//
//  ParentTodoListView.swift
//  demo05-todoey
//
//  Created by Alec Lobanov on 10/14/24.
//

import SwiftUI

struct ParentTodoListView: View {
    var body: some View {
        NavigationView{
            List{
                HStack{
                    Image(systemName:"graduationcap.circle.fill")
                        .foregroundStyle(.white,.green)
                        .font(.system(size:30))
                    NavigationLink("Homework"){
                        TodoListView(color: .green)
                    }
                    .foregroundStyle(.white)
                }
                HStack{
                    Image(systemName:"list.bullet.circle.fill")
                        .foregroundStyle(.white,.blue)
                        .font(.system(size:30))
                    NavigationLink("Chores"){
                        TodoListView(color: .blue)
                    }
                    .foregroundStyle(.white)
                }
                    
            }
            .navigationTitle("Reminders")
        }
    }
}

#Preview {
    ParentTodoListView()
}
