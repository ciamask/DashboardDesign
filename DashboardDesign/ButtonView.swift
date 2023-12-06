//
//  ButtonView.swift
//  Pokedex
//
//  Created by Shreeya Maskey on 12/5/23.
//

import SwiftUI

struct ButtonView: View {
    @State var title: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                .foregroundStyle(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(uiColor: #colorLiteral(red: 0.8862745098, green: 0.337254902, blue: 0.09803921569, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.9137254902, green: 0.1450980392, blue: 0.1450980392, alpha: 1))]),
                        startPoint: .leading,
                        endPoint: .trailing))
            HStack{
                Text(title).font(.system(size: 14, weight: .bold))
                    .foregroundStyle(.white)
                Image("popup")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
            }
        }.frame(height: 48)
    }
}

#Preview {
    ButtonView(title: "Hello")
}
