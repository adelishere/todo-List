//
//  ContentView.swift
//  todoList
//
//  Created by mohmmed adel on 20/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
        Todo(title: "do the math homework") ,
        Todo(title: "clean the dishes") ,
        Todo(title: "finish the swift accelerator unit 8") ,
        Todo(title: "go to the gym") ,
    ]
    
    var body: some View {
            
            List(todos) { todo in
                Text(todo.title)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
