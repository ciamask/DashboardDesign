//
//  BackgroundView.swift
//  Pokedex
//
//  Created by Shreeya Maskey on 12/5/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack{
            Image("background")
             .resizable()
             .scaledToFill()
             .edgesIgnoringSafeArea(.all)
            VStack {
                Image("conffetti")
                    .scaledToFit()
                Spacer()
            }
        }
    }
}

#Preview {
    BackgroundView()
}
