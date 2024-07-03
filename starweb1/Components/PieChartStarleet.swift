//
//  PieChartStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 03/07/2024.
//

import SwiftUI
import Charts

struct PieChartStarleet: View {
    let data: [PostCount] = [
        .init(category: "Xcode", count: 79),
        .init(category: "Swift", count: 73),
        .init(category: "SwiftUI", count: 58),
        .init(category: "WWDC", count: 15),
        .init(category: "SwiftData", count: 9)
      ]
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            Chart(data, id: \.category) { item in
              SectorMark(
                angle: .value("Count", item.count),
                innerRadius: .ratio(0.6),
                angularInset: 2
              )
              .cornerRadius(5)
              .foregroundStyle(by: .value("Category", item.category))
            }
            .scaledToFit()
            .chartLegend(.hidden)
        }
    }
}

struct PostCount {
  var category: String
  var count: Int
}

#Preview {
    PieChartStarleet()
}
