//
//  ContentView.swift
//  demo05-todoey
//
//  Created by Alec Lobanov on 10/8/24.
//

import SwiftUI



struct TodoListView: View {
    
    @State var toDoList:[Todo] = (
        [Todo(text:"Walk the Hog"),Todo(text:"Feed the Dog"),Todo(text:"Eat Breakfast")])
    @State private var inputToDo = ""
    let color:Color
    var body: some View {
        NavigationStack {
            List{
                ForEach(toDoList){item in
                    ToDoView(todo: item,color:color)
                }
            }
            .listStyle(.plain)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Text("ToDoey")
                        .font(.largeTitle)
                        .bold()
                        .fontDesign(.rounded)
                        .foregroundStyle(color)
                }
                ToolbarItem(placement: .bottomBar){
                    HStack{
                        Button{
                            toDoList.append(Todo(text:""))
                        }label: {
                            Image(systemName: "plus.circle.fill")
                            Text("New Todo")
                        }
                        .buttonStyle(.plain)
                        .foregroundStyle(color)
                        .fontDesign(.rounded)
                        .bold()
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        TodoListView(color:.blue)
    }
}
