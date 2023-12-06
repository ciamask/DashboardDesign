//
//  BottomView.swift
//  Pokedex
//
//  Created by Shreeya Maskey on 12/4/23.
//

import SwiftUI

struct BottomView: View {
    let columns = [
            GridItem(.flexible())
        ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("My Active Plans")
                .font(.system(size: 20, weight: .semibold))
            Text("You have 4 active plans")
                .font(.system(size: 13))
                .padding(.top, 4)
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(0..<4) { _ in
                        CardView()
                    }
                }
            }.padding(.top)
            
            HStack {
                Text("Membership Enrolment")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                Text("See All")
                    .font(.system(size: 13))
            }.padding(.top)
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(0..<20) { _ in
                        CellView()
                    }
                }
            }.padding(.top)
            
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
          )
        .padding(.horizontal)
        Spacer()
    }
}

#Preview {
    BottomView()
}

