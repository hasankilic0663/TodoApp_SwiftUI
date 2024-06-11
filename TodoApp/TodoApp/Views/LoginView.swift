//
//  LoginView.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                
                
                //header
                HeaderView()
                
                //form-email, Şifre ve button
                Form{
                    
                    TextField("Email Adresiniz", text: $email)//email değernde saklanacak
                    SecureField("Şifreniz", text: $password)
                }
                .frame(height: 150)
                    
                Button {
                    
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.blue)
                            .shadow(radius: 15)
                        Text("Giriş Yap")
                            .foregroundStyle(.white)
                    }
                }.frame(height: 50)
                    .padding(.horizontal)//yanlardan taşmasın diye
                Spacer()

                
                //footer - Hesabınız yokmu
                
                VStack{
                    Text("Buralarda yeni misin?")
                    NavigationLink("Yeni Hesap oluştur!",destination: RegisterView())
                }
                .padding(.bottom,150)
            }
        }
    }
}

#Preview {
    LoginView()
}
