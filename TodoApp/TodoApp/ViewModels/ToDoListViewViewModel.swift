//
//  ToDoListViewViewModel.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import Foundation


class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false // cunku sayfa acıldıgında kapalı olarak gelmesini istiyoruz
    
    init(){}
}
