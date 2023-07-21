//
//  todoEdit.swift
//  todoList
//
//  Created by mohmmed adel on 21/07/2023.
//

import SwiftUI

struct todoEdit: View {
    @Binding var todo : Todo
    
    var body: some View {
        VStack{
            Form {
                
                TextField("add a note", text: $todo.title)
                HStack{
                    TextField("subtitle", text: $todo.subTitle )
                    Text("\(todo.subTitle.count)")
                        .foregroundColor(.gray)
                }
                Toggle("completed ?" , isOn: $todo.iscompleted)

                
            }.navigationTitle("Todo details")
        }
    }
}

struct todoEdit_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            todoEdit(todo : .constant(Todo(title: "")))
        }
    }
}
