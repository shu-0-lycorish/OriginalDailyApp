//
//  DailyData.swift
//  OriginalDailyApp
//
//  Created by Shuhei Kawano on 2024/04/22.
//

import Foundation

func filterMonth(dailyData: Array<DailyData>) -> Array<Int> {
    var prevData = 0
    var monthWithData = [Int]()
    
    for data in Dailies {
        if data.dateMonth != prevData {
            monthWithData.append(data.dateMonth)
            prevData = data.dateMonth
        }
    }
    
    return monthWithData
}

struct DailyData: Identifiable{
    var id = UUID()
    var dateYear: Int
    var dateMonth: Int
    var dateDay: Int
    var week: String
    
    var eval: Int
    var comment: String
}

var Dailies: [DailyData] = [
    DailyData(
        dateYear: 2024,
        dateMonth: 1,
        dateDay: 1,
        week: "Mon.",
        eval: 0,
        comment: "1月1日の一言日記です。1月1日の一言日記です。1月1日の一言日記です。"
    ),
    DailyData(
        dateYear: 2024,
        dateMonth: 1,
        dateDay: 2,
        week: "Tue.",
        eval: 1,
        comment: "1月2日の一言日記です。1月2日の一言日記です。1月2日の一言日記です。"
    ),
    DailyData(
        dateYear: 2024,
        dateMonth: 1,
        dateDay: 3,
        week: "Wed.",
        eval: 2,
        comment: "1月3日の一言日記です。1月3日の一言日記です。1月3日の一言日記です。"
    ),
    DailyData(
        dateYear: 2024,
        dateMonth: 1,
        dateDay: 4,
        week: "Thu.",
        eval: 3,
        comment: "1月4日の一言日記です。1月4日の一言日記です。1月4日の一言日記です。"
    ),
    DailyData(
        dateYear: 2024,
        dateMonth: 1,
        dateDay: 5,
        week: "Fri.",
        eval: 0,
        comment: "1月5日の一言日記です。1月5日の一言日記です。1月5日の一言日記です。"
    ),
    DailyData(
        dateYear: 2024,
        dateMonth: 1,
        dateDay: 6,
        week: "Sat.",
        eval: 1,
        comment: "1月6日の一言日記です。1月6日の一言日記です。1月6日の一言日記です。"
    ),
    DailyData(
        dateYear: 2024,
        dateMonth: 1,
        dateDay: 7,
        week: "Sun.",
        eval: 2,
        comment: "1月7日の一言日記です。1月7日の一言日記です。1月7日の一言日記です。"
    ),
    
    
    
    DailyData(
        dateYear: 2024,
        dateMonth: 2,
        dateDay: 1,
        week: "Sun.",
        eval: 1,
        comment: "2月1日の一言日記です。2月1日の一言日記です。2月1日の一言日記です。"
    ),
    DailyData(
        dateYear: 2024,
        dateMonth: 2,
        dateDay: 2,
        week: "Mon.",
        eval: 1,
        comment: "2月2日の一言日記です。2月2日の一言日記です。2月2日の一言日記です。"
    ),
    DailyData(
        dateYear: 2024,
        dateMonth: 2,
        dateDay: 3,
        week: "Tue.",
        eval: 1,
        comment: "2月3日の一言日記です。2月3日の一言日記です。2月3日の一言日記です。"
    ),
    
    
    
    DailyData(
        dateYear: 2024,
        dateMonth: 3,
        dateDay: 1,
        week: "Sun.",
        eval: 1,
        comment: "3月1日の一言日記です。3月1日の一言日記です。3月1日の一言日記です。"
    ),
    DailyData(
        dateYear: 2024,
        dateMonth: 3,
        dateDay: 2,
        week: "Mon.",
        eval: 1,
        comment: "3月2日の一言日記です。3月2日の一言日記です。3月2日の一言日記です。"
    ),
    DailyData(
        dateYear: 2024,
        dateMonth: 3,
        dateDay: 3,
        week: "Tue.",
        eval: 1,
        comment: "3月3日の一言日記です。3月3日の一言日記です。3月3日の一言日記です。"
    )
]


