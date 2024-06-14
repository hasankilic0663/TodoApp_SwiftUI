    //
    //  LoginViewViewModel.swift
    //  TodoApp
    //
    //  Created by Hasan on 10.06.2024.
    //

    import Foundation

    class LoginViewViewModel:ObservableObject{//Gözlemleneilir object MVVM
        @Published var email = ""
        @Published var password = ""
        @Published var errorMessage = ""
        
        init(){}
            
            func login(){// guardda yazan -> email bosmu degılmı bak bossa return et değilse degılse  boslukları sil
                
                errorMessage = ""
                
                guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                      !password.trimmingCharacters(in: .whitespaces).isEmpty
                else{
                    errorMessage = "Lütfen tüm alanları doldurun!"
                    return
                }
            }
            
            
            func validate(){// email şifre yazdugunda gecerlı bbır sıfre ve emaılmı gırdı vb bunları butrada kontrıl edıyoruz
                
                
            
            
        }
    }

