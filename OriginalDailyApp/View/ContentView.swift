//
//  ContentView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationTitleView()
            
            TabView {
                DailyListView()
                DailyListView()
                DailyListView()
            }
            .tabViewStyle(PageTabViewStyle())
            //.animation(.easeInOut)
            .transition(.slide)
        }
        .overlay(EditButtonView().offset(x:-20, y:-10), alignment: .bottomTrailing)
        
    }
}

#Preview {
    ContentView()
}
