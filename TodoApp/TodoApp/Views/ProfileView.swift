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
                
                if let user = viewModel.user{
                    profile(user : user)
                } else{
                    Text("Profil yükleniyor...")
                }
                
                
                // Logout işlemi yapılacak
                
                BigButton(title: "Çıkış yap "){ viewModel.logout()                }
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
        .onAppear{
            viewModel.fetchUser()//fetchuserı getırıyo ve bızım datalarımız yuklenıp gelıyop
            
            
            }
        }
    
    @ViewBuilder
    func profile(user:User) -> some View{
        Image(systemName: "person.circle")
            .resizable()
            
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(.black)
            .frame(width: 125,height: 125)
        
        VStack{
            HStack{
                Text("İsim: ")
                Text(user.name)
            }
            HStack{
                Text("Email: ")
                Text(user.email)
            }
            HStack{
                Text("Kayıt Tarihi: ")
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated , time : .shortened))")
            }
        }
    }
    }

#Preview {
    ProfileView()
}
