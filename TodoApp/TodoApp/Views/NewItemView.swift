//
//  NewItemView.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import SwiftUI

struct NewItemView: View {
    
    @Binding var newItemPresented: Bool// binding yapmamızın sebebi değişkeni değiştirmek yani . newitemview false cevırırsek todoloısttekı degıskende false donecek . ikisini birllikte aynı kontol edıyo gıbı esıtlıyo yani
    @StateObject var viewModel = NewItemViewViewModel()
    var body: some View {
        VStack{
            Text("Yeni Görev")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding(.top,100)
            Form{
                TextField("Başlık",text: $viewModel.title)
                DatePicker("Bitiş tarihi", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                BigButton(title: "Kaydet") {
                    if viewModel.canSave{
                        viewModel.save()
                        newItemPresented=false
                    } else{
                        viewModel.showAlert = true
                    }
                    
                    
                }
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Hata"), message: Text("Lütfen verilerin doğruluğunu kontrol edin!"))
            }
            
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
