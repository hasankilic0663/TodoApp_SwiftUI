//
//  BigButtonView.swift
//  TodoApp
//
//  Created by Hasan on 11.06.2024.
//

import SwiftUI

struct BigButton: View {
    
    let title: String
    
    let action : () -> Void
    var body: some View {
        Button (action : action,
            
         label: {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.blue)
                    .shadow(radius: 15)
                Text(title)
                    .foregroundStyle(.white)
            }
        }).frame(height: 50)
            .padding(.horizontal)//yanlardan taşmasın diye
    }
}

#Preview {
    BigButton(title: "Örnek Buton Title'ı", action: {})
}
