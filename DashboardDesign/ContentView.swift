//
//  ContentView.swift
//  DashboardDesign
//
//  Created by Shreeya Maskey on 12/5/23.
//

import SwiftUI

struct ContentView: View {
    @State private var currentZoom = 0.0
    @State private var totalZoom = 1.0

    var body: some View {
        Image("pf")
            .scaleEffect(currentZoom + totalZoom)
            .gesture(
                MagnifyGesture()
                    .onChanged { value in
                        currentZoom = value.magnification - 1
                    }
                    .onEnded { value in
                        totalZoom += currentZoom
                        currentZoom = 0
                    }
            )
            .accessibilityZoomAction { action in
                if action.direction == .zoomIn {
                    totalZoom += 1
                } else {
                    totalZoom -= 1
                }
            }
    }
}

#Preview {
    ContentView()
}
