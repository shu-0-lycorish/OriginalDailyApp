//
//  NavigationTitleView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/10.
//

import SwiftUI

struct NavigationTitleView: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 10) {
            Text("Jan.")
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

#Preview {
    NavigationTitleView()
}
