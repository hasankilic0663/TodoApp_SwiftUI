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
                
            }
            .navigationTitle("Profil")
            .toolbar{
                Button {
                    //Sheet acma kodları
                } label: {
                    Image(systemName: "plus")
                }

            }
        }
    }
}

#Preview {
    ProfileView()
}
