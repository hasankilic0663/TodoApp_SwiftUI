//
//  ToDoListItem.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import Foundation

struct ToDoListItem: Codable , Identifiable {// otomatık olarak ıd olusturacagız
    let id : String
    let title : String
    let dueDate : TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool // checkbox ıcın yaptık
    
    
    mutating func setDone(_ state : Bool) {// gelen boolean dege isDone ı degıstırceek
       // isDone = state // dısarıdan gonderdıgımız true yada false degerını aktarıyoruz
    }

}
