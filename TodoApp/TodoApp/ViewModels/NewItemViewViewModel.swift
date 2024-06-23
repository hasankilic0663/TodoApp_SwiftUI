//
//  NewItemViewViewModel.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import Foundation

class NewItemViewViewModel : ObservableObject{
    @Published var title  = ""
    @Published var dueDate = Date()
    
    init(){}
    
    func save(){
        
    }
    
    
    var canSave : Bool {     //yani kaydedilebilirmi
        
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else{// başlık kısmına girdiği değerin bosluklarını sıldıkten soınra bos olup olmadıgını kontrol ettık. bossa direk else girip false dönecek
            return false
        }
    }
}
