//
//  ToDoListViewViewModel.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import FirebaseFirestore
import Foundation


class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false // cunku sayfa acıldıgında kapalı olarak gelmesini istiyoruz
    
    private let userId : String
    
    
    init(userId: String){
        self.userId=userId
    }
    
    ///Delete to do list item
    ///-Parameter id: Item id to delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection( "users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete() //ilgilii user ın todosuna gıdıcek ve dedıgın ıdnın verılerını sılıcek
    }
}
