//
//  StackedNotificationView.swift
//  Pokedex
//
//  Created by Shreeya Maskey on 12/4/23.
//

import SwiftUI

struct NotificationModel {
    var id = UUID()
    var color : Color
    var showView: Bool = false
}

struct NotificationView : View {
    @State var showView: Bool = false
    
    var body: some View {
        if showView {
            HStack {
                Image("achievmentStar")
                    .resizable()
                    .frame(width: 38, height: 38)
                VStack(alignment: .leading, spacing: 0) {
                HStack{
                    Text("Achievements")
                        .fontWeight(.semibold)
                    Spacer()
                    Image("achievmentStar")
                        .resizable()
                        .frame(width: 20, height: 20)
                    }
                    Text("You get registration points - 300pts")
                }
                Spacer()
            }.padding(.horizontal)
            .frame(height: 66)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.clear)
                .frame(height: 66))
        } else {
            RoundedRectangle(cornerRadius: 20).fill(Color.clear)
                .frame(height: 66)
        }
    }
}


struct StackedNotificationView : View {
    @State private var stacked = true
    
    var todos : [NotificationModel] = [.init(color: Color(uiColor: #colorLiteral(red: 0, green: 0.827649653, blue: 0.7545314431, alpha: 1))),.init(color: Color(uiColor: #colorLiteral(red: 0, green: 0.827649653, blue: 0.7545314431, alpha: 1)).opacity(0.35)),.init(color: Color(uiColor: #colorLiteral(red: 0, green: 0.827649653, blue: 0.7545314431, alpha: 1)).opacity(0.25))]
    
    func offsetForIndex(_ index : Int) -> CGFloat {
        CGFloat((todos.count - index - 1) * (stacked ? 8 : 104) )
    }
    
    func horizontalPaddingForIndex(_ index : Int) -> CGFloat {
        stacked ? CGFloat(todos.count - index) * 4 : 4
    }
    
    var body: some View {
        VStack {
            GeometryReader { reader in
                ForEach(Array(todos.reversed().enumerated()), id: \.1.id) { (index, item) in
                    if index == 2 {
                        NotificationView(showView: true)
                            .background(item.color)
                            .cornerRadius(20)
                            .padding(.horizontal, horizontalPaddingForIndex(index))
                            .offset(x: 0, y: offsetForIndex(-index))
                            .zIndex(Double(index))
                    } else {
                        NotificationView()
                            .background(item.color)
                            .cornerRadius(20)
                            .padding(.horizontal, horizontalPaddingForIndex(index))
                            .offset(x: 0, y: offsetForIndex(-index))
                            .zIndex(Double(index))
                    }
                }
            }
//            Button(action: {
//                withAnimation {
//                    stacked.toggle()
//                }
//            }) {
//                Text("Unstack")
//            }

        }
    }
}

#Preview {
    StackedNotificationView()
}
