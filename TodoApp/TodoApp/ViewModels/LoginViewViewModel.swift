    //
    //  LoginViewViewModel.swift
    //  TodoApp
    //
    //  Created by Hasan on 10.06.2024.
    //

import FirebaseAuth
    import Foundation

    class LoginViewViewModel:ObservableObject{//Gözlemleneilir object MVVM
        @Published var email = ""
        @Published var password = ""
        @Published var errorMessage = ""
        
        init(){}
            
            func login(){// guardda yazan -> email bosmu degılmı bak bossa return et değilse degılse  boslukları sil
                guard validate() else{ // else olması durumunda return edıp cıkar
                    
                    return
                }
                Auth.auth().signIn(withEmail: email, password: password) 
                    
                
                
            }
            
            
            func validate() -> Bool{// email şifre yazdugunda gecerlı bbır sıfre ve emaılmı gırdı vb bunları butrada kontrıl edıyoruz
                
                errorMessage = ""
                
                guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                      !password.trimmingCharacters(in: .whitespaces).isEmpty
                else{
                    errorMessage = "Lütfen tüm alanları doldurun!"
                    return false
                }
                
                guard email.contains("@") && email.contains(".") else{//email içinde @ ve . varmı dıye bakıyo
                    errorMessage = "Lütfen geçerli bir email adresi giriniz"
                    return false
                }
            return true // hatalar varsa false döndürsün yoksa true dondursun
            
        }
    }

