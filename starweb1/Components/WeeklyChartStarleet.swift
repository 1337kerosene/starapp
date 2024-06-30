//
//  WeeklyChartStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 30/06/2024.
//

import SwiftUI
import Charts

struct WeeklyChartStarleet: View {
    var body: some View {
        Chart(data, id: \.category) { item in
            BarMark(
                x: .value("Category", item.category),
                y: .value("Value", item.value)
            )
        }
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
        .frame(height: 500)
    }
}

#Preview {
    WeeklyChartStarleet()
}

