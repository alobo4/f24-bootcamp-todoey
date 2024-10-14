//
//  ToDoView.swift
//  demo05-todoey
//
//  Created by Alec Lobanov on 10/8/24.
//

import SwiftUI


struct Todo: Identifiable {
    var id = UUID()
    var isDone = false
    var text: String
}

extension Todo {
    static var example = Todo(text: "Walk the Dog")
    static var examplelist: [Todo]{
        [Todo(text:"Walk the Dog"),Todo(text:"Feed the Hog"),Todo(text:"Eat Breakfast")]
    }
}

struct ToDoView: View {    
    @State var todo:Todo
    let color:Color
    var body: some View {
        HStack{
            Button{
                todo.isDone.toggle()
            } label: {
                Image(systemName:todo.isDone ? "checkmark.square.fill" : "square")
            }
            .foregroundColor(color)
            TextField("",text:$todo.text)
        }
    }
}

#Preview {
    //@Previewable @State var todo = Todo(text: "do dishes")
    ToDoView(todo:.example,color:.purple)
}
