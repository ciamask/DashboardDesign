//
//  CardView.swift
//  Pokedex
//
//  Created by Shreeya Maskey on 12/5/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                .foregroundStyle(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(uiColor: #colorLiteral(red: 0.2901960784, green: 0.2274509804, blue: 1, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.4274509804, green: 0.2274509804, blue: 1, alpha: 1))]),
                        startPoint: .leading,
                        endPoint: .trailing))
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Image("pf")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                    Spacer()
                    VStack {
                        Image("popup")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                        Spacer()
                    }
                }
                Text("Dr. Alan Hathaway")
                    .foregroundStyle(.white)
                    .font(.system(size: 14, weight: .semibold))
                Text("Cardiovascular")
                    .foregroundStyle(.white)
                    .font(.system(size: 13))
                    .padding(.bottom)
                Spacer()
                HStack{
                    Text("Total Visits")
                        .foregroundStyle(.white)
                        .font(.system(size: 11, weight: .semibold))
                    Spacer()
                    Text("45/100")
                        .foregroundStyle(.white)
                        .font(.system(size: 11))
                }
                ProgressiveBarView()
                
            }.padding()
        }.frame(width: 156, height: 168)
    }
}

#Preview {
    CardView()
}
