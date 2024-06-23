//
//  ToDoListView.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userId : String
    
    init(userId:String){
        
        self.userId = userId // busaydakı userıd dısarkdan gelen userId ye eşit olacak bu sayede elımızdekı userIdyı kullanabılırı
    }//burada uygulamamız baslastılıdıgı zaman ılk basta otomatık cagırılması gereken seyler
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Görevler")
            .toolbar{
                Button {
                    //Sheet acma kodları
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }

            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {// burada sheet acıldıgında hangı sayfayı acacagıımı content kısmına tanımlamamız geerkıyor
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
                
            })
        }
    }
}

#Preview {
    ToDoListView(userId: "alksdjlkasjdkl")
}
