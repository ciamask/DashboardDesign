//
//  DashboardView.swift
//  Pokedex
//
//  Created by Shreeya Maskey on 12/3/23.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var showingCredits = true
    
    var body: some View {
        ZStack {
            Color.clear
                .background(BackgroundView())
            VStack{
                VStack{
                    NavView().padding(.horizontal)
                    VStack(spacing: 8){
                        Text("My Rewards Points").font(.system(size: 26, weight: .semibold))
                            .foregroundStyle(.white)
                        Text("Earned points").font(.system(size: 18, weight: .regular))
                            .foregroundStyle(.white)
                        Text("3222").font(.system(size: 60, weight: .bold))
                            .foregroundStyle(.white)
                        Text("Level 1").font(.system(size: 14, weight: .regular))
                            .foregroundStyle(.white)
                            .padding(.top, -12)
                        StackedNotificationView().padding(.horizontal, 8)
                            .frame(height: 100)
                        }
                }.padding(.bottom)
                .sheet(isPresented: $showingCredits) {
                    ZStack{
                        ScrollView{
                            BottomView()
                        }
                        HStack{
                            Button {
                                print("Edit button was tapped")
                            } label: {
                                ButtonView(title: "Service Provider")
                            }
                            Spacer()
                            Button {
                                print("Edit button was tapped")
                            } label: {
                                ButtonView(title: "My Visits")
                            }
                        }.padding(.horizontal)
                            .frame(maxHeight: .infinity, alignment: .bottom)
                            .padding(.bottom)
                    }.padding(.top)
                            .presentationDetents([.medium, .large])
                            .interactiveDismissDisabled()
                }
                Spacer()
            }
            
        }
    }
}

#Preview {
    DashboardView()
}



