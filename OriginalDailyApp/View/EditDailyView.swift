//
//  EditDailyView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/10.
//

import SwiftUI

struct EditDailyView: View {
    @Binding var isPresented: Bool
    @State var inputComment = ""
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            HStack(alignment: .bottom, spacing: 10) {
                Text("6")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Mon.")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .baselineOffset(3)
                Spacer()
            }
            
            Spacer()
            
            EvalSelectableView()
            
            TextEditor( text: $inputComment)
                .frame(height:70)
                .textFieldStyle(.roundedBorder)
                .border(.gray, width: 1)
                .overlay(alignment: .topLeading) {
                    // 未入力の時、プレースホルダーを表示
                    if inputComment.isEmpty {
                        Text("今日のひとこと")
                            .allowsHitTesting(false) // タップ判定を無効化
                            .foregroundColor(Color(uiColor: .placeholderText))
                            .padding(6)
                    }
                }
                
            Spacer()
            
            HStack {
                Spacer()
                
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
        .frame(height: 400)
        .padding()
        
    }
}

#Preview {
    EditDailyView(isPresented: Binding.constant(false))
}
