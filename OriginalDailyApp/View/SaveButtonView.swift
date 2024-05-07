//
//  SaveButtonView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/10.
//

import SwiftUI

struct SaveButtonView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        Button(action: {
            print("Save")
            isPresented = false
        }) {
            Image(systemName: "pencil")
                .padding()
                .frame(width: 80, height: 80)
                .imageScale(.large)
                .foregroundColor(Color.white)
                .background(Color.red)
                .clipShape(Circle())
        }
    }
}

#Preview {
    SaveButtonView(isPresented: Binding.constant(false))
}
