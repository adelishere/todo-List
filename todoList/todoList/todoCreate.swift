//
//  todoCreate.swift
//  todoList
//
//  Created by mohmmed adel on 21/07/2023.
//

import SwiftUI

struct todoCreate: View {
    @State private var title = ""
    @State private var subtitle = ""
    @State private var warning = ""
    @Binding var todosArray : [Todo]
    @Environment (\.dismiss) var dismiss
    var body: some View {
        VStack {
            Form {
                Section("info"){
                    TextField("title" , text:$title)
                    TextField("subtitle" , text:$subtitle)
                }
                Section("actions"){
                    Button("save"){
                        if title.isEmpty{
                            warning = "please add a title or press cancel"
                        }else{
                            let todo = Todo(title: title , subTitle: subtitle)
                            todosArray.append(todo)
                            dismiss()
                        }
                    }
                    Button("cancel" , role:.destructive){
                        dismiss()
                    }
                }
            }
            Text(warning)
                .offset(y:-100)
                .foregroundColor(.red)
                .bold()
            
        }.background(.black.opacity(0.05))
    }
}

struct todoCreate_Previews: PreviewProvider {
    static var previews: some View {
        todoCreate(todosArray: .constant([]))
    }
}
