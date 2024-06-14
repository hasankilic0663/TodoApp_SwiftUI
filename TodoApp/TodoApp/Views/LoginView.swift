//
//  LoginView.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import SwiftUI

struct LoginView: View {
    
//    @State var email = ""
//    @State var password = ""
    @StateObject var viewModel = LoginViewViewModel()
    
    
    var body: some View {
        NavigationStack{
            VStack{
                
                
                //header
                HeaderView()
                
                //form-email, Şifre ve button
                Form{
                    if !viewModel.errorMessage.isEmpty{//errormesage bos degılse
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    TextField("Email Adresiniz", text: $viewModel.email)//email değernde saklanacak
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)// baş harfini buyuk yaparak baslatmıyor !!
                    
                    SecureField("Şifreniz", text: $viewModel.password)
                }
                .frame(height: 150)
                    
                Button (action : {
                    viewModel.login()
                    
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.blue)
                            .shadow(radius: 15)
                        Text("Giriş Yap")
                            .foregroundStyle(.white)
                    }
                })
                .frame(height: 50)
                    .padding(.horizontal)//yanlardan taşmasın diye
                Spacer()
                    .padding(.bottom,15)
                
                
                //footer - Hesabınız yokmu
                
                      VStack{
                    Text("Buralarda yeni misin?")
                    NavigationLink("Yeni Hesap oluştur!",
                                   destination: RegisterView())
                }
                .padding(.bottom,150)
            }
        }
    }
}

#Preview {
    LoginView()
}
