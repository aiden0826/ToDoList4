//
//  ContentView.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
        
    }
    
    @ViewBuilder
    
    var accountView: some View {
        TabView{
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Account", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
