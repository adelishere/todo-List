//
//  ContentView.swift
//  todoList
//
//  Created by mohmmed adel on 20/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
        Todo(title: "do the math homework" , iscompleted: true) ,
        Todo(title: "clean the dishes") ,
        Todo(title: "finish the swift accelerator unit 8") ,
        Todo(title: "go to the gym") ,
    ]
    
    var body: some View {
        
        NavigationStack {
            List($todos) { $todo in
                HStack{
                    Image(systemName: todo.iscompleted ? "checkmark.circle.fill" : "circle")
                        .onTapGesture {
                            todo.iscompleted.toggle()
                        }
                    Text(todo.title)
                        .strikethrough(todo.iscompleted)
                }
            }.navigationTitle("Todos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
