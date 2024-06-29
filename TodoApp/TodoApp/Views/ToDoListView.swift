//
//  ToDoListView.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//
import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel : ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]//modeldekı ogelerı barındıran nesne
    //private let userId : String buna gerek kalmadı artık
    
    init(userId:String){
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))//bunun bir yasam dongusu oldugu ve bızım takıp edecegımızı
        
        
        
    }
        //self.userId = userId // busaydakı userıd dısarkdan gelen userId ye eşit olacak bu sayede elımızdekı userIdyı kullanabılırı
    //burada uygulamamız baslastılıdıgı zaman ılk basta otomatık cagırılması gereken seyler
    
    var body: some View {
        NavigationView{
            VStack{
                List(items){item in
                    
                    ToDoListItemView(item: item)
                        .swipeActions{
                            Button("Sil"){
                                viewModel.delete(id: item.id)
                            }
                            .background(.red)
                        }
                    
                }
                .listStyle(PlainListStyle())//arka taraf rengını kaldırdı cızgılı gosterdı
                
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
    ToDoListView(userId: "C8o3QczqGQXaTERjbak6INqB0Jc2")
}
