//
//  MainViewViewModel.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//
import FirebaseAuth
import Foundation


class MainViewViewModel : ObservableObject {
    @Published var currenUserId:String = "" // idler string olarak tanımlanıyo karmasık gıdıyo yanı
    
    init(){
        
        Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currenUserId = user?.uid ?? "" // logın olunmusmu olunmamısmıdan sonra currenuser a userıd bastırıyoruz
            }
        }
        
    }
    public var isSignedIn: Bool {//kullanıcı giriş yaptımı diye metot dondurucez
        return Auth.auth().currentUser != nil //boş değilse dönder
        
    }
    
}
