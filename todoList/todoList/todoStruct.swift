//
//  todoStruct.swift
//  todoList
//
//  Created by mohmmed adel on 21/07/2023.
//

import Foundation

struct Todo:Identifiable {
    let id = UUID()
    var title : String
    var subTitle  = ""
    var iscompleted = false
    
}
