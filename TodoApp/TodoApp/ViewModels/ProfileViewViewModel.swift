//
//  ProfileViewViewModel.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class ProfileViewViewModel : ObservableObject{
    
    @Published var user: User? = nil
    
    init(){}
    
    func fetchUser(){
        guard let userId = Auth.auth().currentUser?.uid else{
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId).getDocument{ [weak self] snapshot , error in
                guard let data = snapshot?.data(), error == nil else{
                    return
                
            }
                Dis
    }
    
    func logout(){
        
    }
}
