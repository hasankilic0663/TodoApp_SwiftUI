//
//  ContentView.swift
//  TodoApp
//
//  Created by Hasan on 9.06.2024.
//  firebase kullanıcaz firebase filestory kullanacaz
// model olarak mvvm kullanacaz

import SwiftUI



struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    
    
    var body: some View {
        if viewModel.isSignedIn , !viewModel.currenUserId.isEmpty {// login oldumu ve currentuserıd sı doluysa
            ToDoListView()
        }
        else{
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
