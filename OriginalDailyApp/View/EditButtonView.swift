//
//  EditButtonView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/10.
//

import SwiftUI

struct EditButtonView: View {
    @State var isShow: Bool = false
    
    var body: some View {
        Button(action: {
            print("Edit")
            isShow = true
        }) {
            Image(systemName: "pencil")
                .padding()
                .frame(width: 80, height: 80)
                .imageScale(.large)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .clipShape(Circle())
        }
        .sheet(isPresented: $isShow) {
            EditDailyView(isPresented: $isShow)
                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    EditButtonView()
}
