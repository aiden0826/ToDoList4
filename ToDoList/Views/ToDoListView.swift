//
//  ItemsView.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    var body: some View {
        
        NavigationStack{
            NavigationView{
                
                VStack{
                    ZStack{
                        Text("Creat a list using the '+'")
                            .shadow(color: .black, radius: 100)
                    }
                }
                .navigationTitle("Store")
                .toolbar {
                    Button{
                        //action
                        viewModel.showingNewItemView = true
                    }label: {
                        Image(systemName: "plus")
                    }
                    .sheet(isPresented: $viewModel.showingNewItemView) {
                        NewItemView(newItemPresented:
                    $viewModel.showingNewItemView)
                    }
                }
            }
        }
    }
}

#Preview {
    ToDoListView(userId:"")
}
