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
                            .autocorrectionDisabled()//otomatik tamamlamayı kapattık
                        TextField("Email Şifreniz",text: $email)
                            .autocorrectionDisabled()
                            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)// baş harfini buyuk yaparak baslatmıyor !!
                        
                        SecureField("Şifreniz",text: $password)
                    }
                }
                .frame(height: 200)//formu kucultuyoz
                
                BigButton(title: "Kayıt ol", action: {})
                
                Spacer()
                //Footer
                
                VStack{
                    Text("Zaten bizden birisi misin?")
                    NavigationLink("Giriş Yap!",
                                   destination: LoginView())
                }
                .padding(.bottom,150)
            }
        }
    }
}

#Preview {
    RegisterView()
}
