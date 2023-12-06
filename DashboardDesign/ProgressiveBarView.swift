//
//  ProgresssiveBarView.swift
//  Pokedex
//
//  Created by Shreeya Maskey on 12/5/23.
//

import SwiftUI

struct ProgressiveBarView: View {
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

    var body: some View {
        ProgressView("", value: downloadAmount, total: 100)
            .onReceive(timer) { _ in
                if downloadAmount < 100 {
                    downloadAmount += 2
                }
            }.tint(.white)
    }
}

#Preview {
    ProgressiveBarView()
}
