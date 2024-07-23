//
//  DailyListView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/02.
//

import SwiftUI

struct DailyListView: View {
    @Binding var dailies: [DailyData]
    @Binding var selectMonth: Int
    
    // var selectDailies = Dailies.filter({$0.dateMonth == 2})
    
    var body: some View {
        var selectDailies = Dailies.filter({$0.dateMonth == selectMonth})
        
        List (selectDailies) { daily in
            VStack {
                HStack (alignment: .bottom){
                    Text(String(daily.dateDay))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(daily.week)
                        .font(.callout)
                        .baselineOffset(3)
                    
                    Spacer()
                    
                    switch daily.eval {
                    case 0:
                        Image(systemName: "circle.circle")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    case 1:
                        Image(systemName: "circle")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    case 2:
                        Image(systemName: "triangleshape")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    case 3:
                        Image(systemName: "xmark")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    default:
                        Text("？")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding(.horizontal, 3)
                .padding(.bottom, 3)
                
                Text(daily.comment)
                    .padding(.horizontal, 10)
                    .frame(maxWidth:.infinity, alignment: .leading)
                
            }
            .frame(width: 340)
            .padding(.horizontal, 8)
            .padding(.vertical, 12)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(.white))
                    .shadow(radius: 5)
            )
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

//#Preview {
//    DailyListView(dailies: Dailies)
//}
