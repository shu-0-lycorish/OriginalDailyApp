//
//  ContentView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/02.
//

import SwiftUI

struct ContentView: View {
    @State var dailies: [DailyData] = Dailies
    let maxMonth: Int = 3
    @State var selectMonth: Int = 2
    @State var prevMonth: Int = 1
    @State var nextMonth: Int = 3
    
    var monthData = [Int]()
    var correctMonth = 0
    
    var filteredMonth = filterMonth(dailyData: Dailies)
    
    
    var body: some View {
        // prevMonth = selectMonth - 1
        // nextMonth = selectMonth + 1
        
        let _ = print(filteredMonth)
        
        VStack {
            NavigationTitleView(selectMonth: $selectMonth)
            
            TabView {
                // ForEach(0..<maxMonth, id: \.self) { Data in
                    // selectMonth = Int(Data)
                    // DailyListView(dailies: $dailies, selectMonth: $selectMonth)
                // }
                
                
                DailyListView(dailies: $dailies, selectMonth: $prevMonth)
                DailyListView(dailies: $dailies, selectMonth: $selectMonth)
                DailyListView(dailies: $dailies, selectMonth: $nextMonth)
            }
            .tabViewStyle(PageTabViewStyle())
            //.animation(.easeInOut)
            .transition(.slide)
        }
        .overlay(EditButtonView(dailies: $dailies).offset(x:-20, y:-10), alignment: .bottomTrailing)
        
    }
}

#Preview {
    ContentView()
}
