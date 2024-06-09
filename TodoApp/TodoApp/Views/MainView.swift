//
//  ContentView.swift
//  TodoApp
//
//  Created by Hasan on 9.06.2024.
//  firebase kullanıcaz firebase filestory kullanacaz
// model olarak mvvm kullanacaz

import SwiftUI



struct MainView: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(.all)
            Button {
                
            } label: {
                Text("Buraya Bas")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(.black)
                    .cornerRadius(15)
                    .foregroundStyle(.white)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
            }

        }
        
    }
}

#Preview {
    MainView()
}
