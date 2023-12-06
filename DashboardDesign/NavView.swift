//
//  NavView.swift
//  Pokedex
//
//  Created by Shreeya Maskey on 12/5/23.
//

import SwiftUI

struct NavView: View {
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("pf")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 38, height: 38)
                    .clipped()
                    .background(RoundedRectangle(cornerRadius: 10).foregroundStyle(.white.opacity(0.3)).frame(width: 50, height: 50))
                    .padding(.trailing)
            })
            
            Spacer()
            
            Image("logo")
             .frame(width: 40, height: 57)
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("Redeem")
                .font(.system(size: 16))
                .selfSizeMask(
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue, Color.yellow]),
                    startPoint: .leading,
                    endPoint: .trailing)
            )
            })
        }
    }
}

#Preview {
    NavView()
}
