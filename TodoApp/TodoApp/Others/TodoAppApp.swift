//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Hasan on 9.06.2024.
//


import SwiftUI
import FirebaseCore




@main
struct TodoAppApp: App {
    init(){
        FirebaseApp.configure()//FireBase entegre ettik
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

//firebase tanımlaması yapacaz
