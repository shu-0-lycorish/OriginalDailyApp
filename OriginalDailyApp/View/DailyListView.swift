//
//  DailyListView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/02.
//

import SwiftUI

struct DailyListView: View {  
    //@State var dailies: DailyData
    
    var body: some View {
        
        ScrollView (.vertical) {
            LazyVStack (spacing: 20){
                ForEach(0..<5) { num in
                   // DailyCardView()
                }
            }
        }
    }
}

#Preview {
    DailyListView()
}
