//
//  NewItemViewViewModel.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel : ObservableObject{
    @Published var title  = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init(){}
    
    func save(){
        guard canSave else{
            return
        }
        
        guard let uId = Auth.auth().currentUser?.uid else{
            return
        }
        
        let newItemId = UUID().uuidString
        let newItem = ToDoListItem( // newItem adında bı nesnemız var artık
            id: newItemId,
            title: title,
            dueDate: dueDate.timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,//otomatık olarak bıtarıh olusturucak ve butona baasıldıgı andakı tarıhı verecek
            isDone: false
        )
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uId)// bu dokumantasyonlar bızım kullanıcılarımızı temsil ediyo ve birer ıd temsıl edıyo kulllanıcıların
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictonary())//datayı ıcerıye gonderıcegız
        
        
    }
    
    
    var canSave : Bool {     //yani kaydedilebilirmi
        
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else{// başlık kısmına girdiği değerin bosluklarını sıldıkten soınra bos olup olmadıgını kontrol ettık. bossa direk else girip false dönecek
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {// buradada tarihi kontrol ediyoruz . -86400 bir güne eşittir. Burada 86400 değeri bir günün saniye cinsinden değeridir. Örneğin 10:52 kısmında canSave metodu içerisinde dueDate'i ele alıyor olalım. Burada yaptığımız kontrol bitiş tarihi bugünden geçmişte bir tarihte olamaz demek. Date() kısmı ile tarihi alıyoruz ve addingTimeInterval(-86400) ile düne gitmiş oluyoruz. Bu sayede guard ile bir condition ( durum ) ifadesi yazmış oluyoruz.            return false
            return false
        }
        return true
    }
}
