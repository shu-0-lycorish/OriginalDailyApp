//
//  ContentView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/02.
//

import SwiftUI

struct ContentView: View {
    @State var dailies: [DailyData] = Dailies
    @State var filteredMonth = filterMonth(dailyData: Dailies)
    @State var monthNum: Int = 1
    //@State var selectMonth: Int = 2
    //@State var prevMonth: Int = 1
    //@State var nextMonth: Int = 3
    
    
    
    var body: some View {
        let _ = print(filteredMonth)
        
        VStack {
            TabView {
                ForEach(filteredMonth, id: \.self) {monthItem in
                    VStack {
                        let _ = monthNum = monthItem
                        
                        NavigationTitleView(selectMonth: $monthNum)
                        DailyListView(dailies: $dailies, selectMonth: $monthNum)
                    }
                }
                
                //DailyListView(dailies: $dailies, selectMonth: $prevMonth)
                //DailyListView(dailies: $dailies, selectMonth: $selectMonth)
                //DailyListView(dailies: $dailies, selectMonth: $nextMonth)
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
