//
//  EvalSelectableView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/11.
//

import SwiftUI

struct EvalSelectableView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        Picker("", selection: self.$selectedIndex) {
            Image(systemName: "circle.circle")
                .tag(0)
            Image(systemName: "circle")
                .tag(1)
            Image(systemName: "triangleshape")
                .tag(2)
            Image(systemName: "xmark")
                .tag(3)
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

#Preview {
    EvalSelectableView()
}
