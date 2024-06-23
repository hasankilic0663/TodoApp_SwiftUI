//
//  RegisterViewViewModel.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//
import FirebaseFirestore
import Foundation
import FirebaseAuth



class RegisterViewViewModel : ObservableObject{
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func register(){
        guard validate() else{
            return
        }
           
        Auth.auth().createUser(withEmail: email, password: password){ [weak self] result, //week self i arastırıp ogren
            error in
            
            guard let userId = result?.user.uid else{// resultun uıd si yoksa return et
                return
                
            }
            
            //insert metodu cagırılacak
            
            self?.insertUserRecord(id: userId)
            
        }// firebase e iletiliyo
            
    }
    
    private func insertUserRecord(id : String){//firestore a istek atmak ıcın
        let newUser = User(id: id, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("users") // db içerisinde koleksyıon users var
            .document(id)//dökuman olustur yada var olan kullan
            .setData(newUser.asDictonary())//arkada dictonarye cevırdı
    }

    
    
    private func validate() ->Bool{
        errorMessage = "" // herseferinde sıfırlansın diye cagırıyoruz
        
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,// buradada emailin karakterler arası boslugu yok edıp bos değilse diye sayıyor
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else{
            errorMessage = "Lütfen tüm alanları doldurunuz "
            return false
        }
        
        guard email.contains("@") && email.contains(".") else { // emailde @ ve . işaretleri olacak yoksa gecerlı emaıl adresı giriniz
            errorMessage = "Geçerli bir email adresi giriniz!"
            return false
            
        }
        
        guard password.count >= 6 else{
            errorMessage = "Lütfen 6 veya daha fazla karakterli şifre giriniz! "
            return false
        }
        
        return true
    }
}
