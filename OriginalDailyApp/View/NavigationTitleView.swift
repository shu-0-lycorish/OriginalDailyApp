//
//  NavigationTitleView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/10.
//

import SwiftUI

struct NavigationTitleView: View {
    @Binding var selectMonth: Int
    
    var body: some View {
        let monthText: String
        switch selectMonth{
            case 1: let _ = monthText = "Jan."
            case 2: let _ = monthText = "Feb."
            case 3: let _ = monthText = "Mar."
            case 4: let _ = monthText = "Apr."
            case 5: let _ = monthText = "May."
            case 6: let _ = monthText = "Jun."
            case 7: let _ = monthText = "Jul."
            case 8: let _ = monthText = "Aug."
            case 9: let _ = monthText = "Sep."
            case 10: let _ = monthText = "Oct."
            case 11: let _ = monthText = "Nov."
            case 12: let _ = monthText = "Dec."
            default: let _ = monthText = "???"
        }
        
        HStack(alignment: .bottom, spacing: 10) {
            Text(String(monthText))
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text("2024")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .baselineOffset(5)
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    }
}

// #Preview {
//     NavigationTitleView()
// }
