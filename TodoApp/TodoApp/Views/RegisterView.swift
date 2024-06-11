//
//  RegisterView.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationStack{
            VStack{
                //header kısmı
                HeaderView()
                //Register formu
                Form{
                    Section(header: Text("Kayıt Formu")) {
                        TextField("Tam Adınız",text: $name)
                        TextField("Email Şifreniz",text: $email)
                        SecureField("Şifreniz",text: $password)
                    }
                }
                .frame(height: 200)//formu kucultuyoz
                Button {
                    
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.blue)
                            .shadow(radius: 15)
                        Text("Kayıt ol")
                            .foregroundStyle(.white)
                    }
                }.frame(height: 50)
                    .padding(.horizontal)//yanlardan taşmasın diye
                Spacer()
                //Footer
            }
        }
    }
}

#Preview {
    RegisterView()
}
