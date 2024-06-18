//
//  RegisterView.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import SwiftUI

struct RegisterView: View {
    
//    @State var name = ""
//    @State var email = ""
//    @State var password = ""
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    
    var body: some View {
        NavigationStack{
            VStack{
                //header kısmı
                HeaderView()
                //Register formu
                Form{
                    Section(header: Text("Kayıt Formu")) {
                        if !viewModel.errorMessage.isEmpty{//errormesage bos degılse
                            Text(viewModel.errorMessage)
                                .foregroundStyle(.red)
                        }
                        TextField("Tam Adınız",text: $viewModel.name)
                            .autocorrectionDisabled()//otomatik tamamlamayı kapattık
                        TextField("Email Şifreniz",text: $viewModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)// baş harfini buyuk yaparak baslatmıyor !!
                        
                        SecureField("Şifreniz",text: $viewModel.password)
                    }
                }
                .frame(height: 250)//formu kucultuyoz
                
                BigButton(title: "Kayıt ol", action: {
                    viewModel.register() 
                })
                
                Spacer()
                //Footer
                
//                VStack{ //Gerek olmadıgını dusunduk zate sol usttev gerı tusu oluyor sebebı ıse navıgatıon stack sayesınde gerı tusu gozukuyor
//                    Text("Zaten bizden birisi misin?")
//                    NavigationLink("Giriş Yap!",
//                                   destination: LoginView())
//                }
//                .padding(.bottom,150)
            }
        }
    }
}

#Preview {
    RegisterView()
}
