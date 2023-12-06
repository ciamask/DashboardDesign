//
//  CellView.swift
//  Pokedex
//
//  Created by Shreeya Maskey on 12/5/23.
//

import SwiftUI

struct CellView: View {
    var body: some View {
        HStack {
            Image("done")
                .resizable()
                .scaledToFill()
                .frame(width: 24, height: 24)
                .padding(.trailing, 6)
            VStack(alignment: .leading) {
                    Text("Doctor has performed a physical examination.")
                        .font(.system(size: 13))
                    Text("03 Apr at 18:35")
                        .font(.system(size: 12))
                }
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: 40,
            alignment: .topLeading
          )
    }
}

#Preview {
    CellView()
}
