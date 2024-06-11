//
//  HeaderView.swift
//  TodoApp
//
//  Created by Hasan on 10.06.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("alpha_logo")
                .resizable()
                .frame(width: 250,height: 250)
            Text("Alpha")
                .font(.system(size: 40))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top,30)
        }.padding(.top,100)
    }
}

#Preview {
    HeaderView()
}
