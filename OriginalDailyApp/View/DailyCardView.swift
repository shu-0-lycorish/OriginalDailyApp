//
//  DailyCardView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/02.
//

import SwiftUI

struct DailyCardView: View {
    var dailies: DailyData
    
    var body: some View {
        
        VStack {
            HStack (alignment: .bottom){
                Text(String(dailies.dateDay))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(dailies.day)
                    .font(.callout)
                    .baselineOffset(3)
                
                Spacer()
                
                Image(systemName: "circle.circle")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal, 3)
            .padding(.bottom, 3)
            
            Text(dailies.comment)
                .frame(alignment: .leading)
            
        }
        .frame(width: 340)
        .padding(.horizontal, 8)
        .padding(.vertical, 12)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(.white))
                .shadow(radius: 5)
            )
    }
}

#Preview {
    DailyCardView(dailies: dailyArray[0])
}
