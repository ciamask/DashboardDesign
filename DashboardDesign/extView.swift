//
//  extView.swift
//  Pokedex
//
//  Created by Shreeya Maskey on 12/5/23.
//

import Foundation
import UIKit
import SwiftUI

extension View {
    func selfSizeMask<T: View>(_ mask: T) -> some View {
        ZStack {
            self.opacity(0)
            mask.mask(self)
        }.fixedSize()
    }
}
