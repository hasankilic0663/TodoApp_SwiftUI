//
//  ProfileView.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    init(){}
    
    var body: some View {
        NavigationView{
            VStack{
               Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.blue)
                    .frame(width: 125,height: 125)
                
                VStack{
                    HStack{
                        Text("İsim: ")
                        Text("Hasan Hüseyin KILIÇ")
                    }
                }
                // Logout işlemi yapılacak
                
                BigButton(title: "Çıkış Yap", action: viewModel.logout())
            }
            .navigationTitle("Profil")
//            .toolbar{
//                Button {
//                    //Sheet acma kodları
//                } label: {
//                    Image(systemName: "plus")
//                }
//
//            }
        }
    }
}

#Preview {
    ProfileView()
}
