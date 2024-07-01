//
//  HomeStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 29/06/2024.
//

import SwiftUI
import Charts

struct HomeStarleet: View {
    var body: some View {
        ZStack {
            Color.starleetBlack.ignoresSafeArea()
            VStack{
                TabView {
                    SessionChartStarleet()
                    WeeklyChartStarleet()
                    MonthlyChartStarleet()
                }
                .frame(height: 600)
                .tabViewStyle(PageTabViewStyle())
                .offset(y: -110)
            }
        }
    }
}


#Preview {
    HomeStarleet()
}
