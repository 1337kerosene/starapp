//
//  MonthlyChartStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 30/06/2024.
//

import SwiftUI
import Charts

struct MonthlyChartStarleet: View {
    var body: some View {
        Chart(data, id: \.category) { item in
            PointMark(
                x: .value("Category", item.category),
                y: .value("Value", item.value)
                
            )
            RuleMark(y: .value("Average", 2.8))
                .foregroundStyle(.gray)
                .annotation(position: .bottom,
                            alignment: .bottomLeading) {
                    Text("avg. 1.5 mM")
                        .foregroundColor(.starleetMain)
                        .padding(.leading)
                }
        }
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
        .frame(height: 500)
    }
}
#Preview {
    MonthlyChartStarleet()
}


