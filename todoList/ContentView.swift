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
        Todo(title: "clean the dishes" , subTitle: "if u want") ,
        Todo(title: "finish the swift accelerator unit 8") ,
        Todo(title: "go to the gym") ,
    ]
    
    var body: some View {
        
        NavigationStack {
            
            List {
                ForEach($todos) { $todo in
                    NavigationLink {
                        todoEdit(todo : $todo)
                    }
                    label : {
                        HStack{
                            Image(systemName: todo.iscompleted ? "checkmark.circle.fill" : "circle")
                                .onTapGesture {
                                    todo.iscompleted.toggle()
                                }
                            VStack (alignment: .leading){
                                Text(todo.title)
                                    .strikethrough(todo.iscompleted)
                                if (!todo.subTitle.isEmpty){
                                    Text(todo.subTitle)
                                        .font(.system(size : 12))
                                        .foregroundColor(.black.opacity(0.4))
                                        .strikethrough(todo.iscompleted)

                                }
                            }
                        }
                    }
                }.onDelete{ IndexSet in
                    todos.remove(atOffsets: IndexSet)
                    print("note deleted ")
                }.onMove{ originalPosition , newPostion in
                    todos.move(fromOffsets: originalPosition, toOffset: newPostion)
                }// this is the harder way, but it is more customizable
                
            }.navigationTitle("Todos")
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        EditButton()
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

