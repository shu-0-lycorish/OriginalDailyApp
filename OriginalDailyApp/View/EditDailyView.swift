//
//  EditDailyView.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/10.
//

import SwiftUI

struct EditDailyView: View {
    @Binding var isPresented: Bool
    @State private var selectedIndex = 0
    @State var inputComment = ""
    
    var body: some View {
        
        let calendar = Calendar(identifier: .gregorian)
        let date = Date()
        let year = calendar.component(.year, from: date)
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        let weekday = calendar.component(.weekday, from: date)
        let weekdayText: String
        switch weekday{
            case 1: let _ = weekdayText = "Sun."
            case 2: let _ = weekdayText = "Mon."
            case 3: let _ = weekdayText = "Tue."
            case 4: let _ = weekdayText = "Wed."
            case 5: let _ = weekdayText = "Thu."
            case 6: let _ = weekdayText = "Fri."
            case 7: let _ = weekdayText = "Sat."
            default: let _ = weekdayText = "???"
        }
        
        
        
        
        VStack(spacing: 30) {
            Spacer()
            
            HStack(alignment: .bottom, spacing: 10) {
                Text(String(day))
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(String(weekdayText))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .baselineOffset(3)
                Spacer()
            }
            
            Spacer()
            
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
            
            
            TextEditor( text: $inputComment)
                .frame(height:70)
                .textFieldStyle(.roundedBorder)
                .border(.gray, width: 1)
                .overlay(alignment: .topLeading) {
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
                    Dailies.append(DailyData(dateYear: year, dateMonth: month, dateDay: day, week: weekdayText, eval: selectedIndex, comment: inputComment))
                    print(Dailies)
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
