//
//  NewItemView.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
var body: some View {
    VStack {
        Text("New Item")
            .font(.system(size: 32))
            .bold()
            .padding(.top, 100)
        
        Form {
            // Title
            TextField("Title", text: $viewModel.title)
                .textFieldStyle(DefaultTextFieldStyle())
            
            // Due Date
            DatePicker("Due Date", selection: $viewModel.dueDate)
                .datePickerStyle(GraphicalDatePickerStyle())
            // Button
            TLButton(title: "Save", 
                     backgroundColor: .pink
            ) {
                viewModel.save()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    newItemPresented = false
                }
            }
            .padding()
            
        }
     }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }
                                         
    ))
}
