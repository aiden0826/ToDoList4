//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel: ObservableObject{
    
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
    }
    
    
}
