//
//  SessionChartStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 30/06/2024.
//

import SwiftUI
import Charts

struct SessionChartStarleet: View {
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            Chart(data, id: \.category) { item in
                LineMark(
                    x: .value("Category", item.category),
                    y: .value("Value", item.value)
                )
                .interpolationMethod(.cardinal)
                PointMark(
                    x: .value("Category", item.category),
                    y: .value("Value", item.value)
                )
            }
            .chartXAxis(.hidden)
            .chartYAxis(.hidden)
            .frame(height: 500)
            Text("2.8 mM")
                .fontWeight(.black)
                .foregroundStyle(.starleetWhiteTwo)
        }
        
        
    }
}

#Preview {
    SessionChartStarleet()
}

struct ValuePerCategory1 {
    var category: String
    var value: Double
}

let data: [ValuePerCategory1] = [
    .init(category: "5:00", value: 1),
    .init(category: "4:45", value: 1.5),
    .init(category: "4:30", value: 1.7),
    .init(category: "4:15", value: 1.5),
    .init(category: "4:00", value: 2.0),
    .init(category: "3:45", value: 2.8),
    .init(category: "3:30", value: 7)
]
