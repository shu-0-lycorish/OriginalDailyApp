//
//  DailyData.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/22.
//

import Foundation

struct DailyData: Identifiable{
    var id = UUID()
    var dateYear: Int
    var dateMonth: Int
    var dateDay: Int
    var day: String
    
    var eval: Int
    var comment: String
}

var dailyArray = [
    DailyData(dateYear: 2024, dateMonth: 1, dateDay: 1, day: "Mon.", eval: 0, comment: "1月1日の一言日記です。1月1日の一言日記です。1月1日の一言日記です。"),
    DailyData(dateYear: 2024, dateMonth: 1, dateDay: 2, day: "Tue.", eval: 1, comment: "1月2日の一言日記です。1月2日の一言日記です。1月2日の一言日記です。"),
    DailyData(dateYear: 2024, dateMonth: 1, dateDay: 3, day: "Wed.", eval: 3, comment: "1月3日の一言日記です。1月3日の一言日記です。1月3日の一言日記です。"),
    DailyData(dateYear: 2024, dateMonth: 1, dateDay: 4, day: "Thu.", eval: 4, comment: "1月4日の一言日記です。1月4日の一言日記です。1月4日の一言日記です。"),
    DailyData(dateYear: 2024, dateMonth: 1, dateDay: 5, day: "Fri.", eval: 5, comment: "1月5日の一言日記です。1月5日の一言日記です。1月5日の一言日記です。")
]
