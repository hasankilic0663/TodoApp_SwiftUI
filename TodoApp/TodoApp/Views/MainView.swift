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
            
            
            accountView
            
            
        }
        else{
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View{//view nesnesı olusturduk
        TabView{
            ToDoListView(userId: viewModel.currenUserId)//todo list viewe  idye göre gonderıyo o iddeki logindeki kişinin gorevlerını gostermek ıcın yapıyoruz
                .tabItem {
                        Label("Görevler",systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profil", systemImage: "person.circle")
                }

        }
    }
}

#Preview {
    MainView()
}
